//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ModifyObjectDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "ModifyObjectDlg.h"
#include "ScriptObject.h"
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CModifyObjectDlg dialog


CModifyObjectDlg::CModifyObjectDlg(CWnd* pParent /*=NULL*/)
: CDialog(CModifyObjectDlg::IDD, pParent)
{
    m_pScriptObject = NULL;
    m_eCreationType = CScriptObject::RT_CREATE;
    //{{AFX_DATA_INIT(CModifyObjectDlg)
    m_strClassName = _T("");
    m_strObjectName = _T("");
	m_bDefault = TRUE;
	m_bAll = FALSE;
	m_bGCN = FALSE;
	m_bPC = FALSE;
	m_bPS2 = FALSE;
	m_bXBox = FALSE;
    //}}AFX_DATA_INIT
}


void CModifyObjectDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CModifyObjectDlg)
	DDX_Control(pDX, IDC_CHECK_XBOX, m_chkXBox);
	DDX_Control(pDX, IDC_CHECK_PS2, m_chkPS2);
	DDX_Control(pDX, IDC_CHECK_PC, m_chkPC);
	DDX_Control(pDX, IDC_CHECK_GCN, m_chkGCN);
	DDX_Control(pDX, IDC_CHECK_DEFAULT, m_chkDefault);
	DDX_Control(pDX, IDC_CHECK_ALL, m_chkAll);
    DDX_Text(pDX, IDC_EDIT_CLASS_NAME2, m_strClassName);
    DDX_Text(pDX, IDC_EDIT_OBJECT_NAME, m_strObjectName);
	DDX_Check(pDX, IDC_CHECK_DEFAULT, m_bDefault);
	DDX_Check(pDX, IDC_CHECK_ALL, m_bAll);
	DDX_Check(pDX, IDC_CHECK_GCN, m_bGCN);
	DDX_Check(pDX, IDC_CHECK_PC, m_bPC);
	DDX_Check(pDX, IDC_CHECK_PS2, m_bPS2);
	DDX_Check(pDX, IDC_CHECK_XBOX, m_bXBox);
    //}}AFX_DATA_MAP
}

void CModifyObjectDlg::SetScriptObject(CScriptObject* pScriptObject)
{
    m_pScriptObject = pScriptObject;

    m_bAll      = FALSE;
    m_bDefault  = FALSE;
    m_bPC       = FALSE;
    m_bXBox     = FALSE;
    m_bPS2      = FALSE;
    m_bGCN      = FALSE;

    if ( pScriptObject->GetPlatForm( ) == ParserConst::PT_ALL )
    {
        m_bAll      = TRUE;
        m_bPC       = TRUE;
        m_bXBox     = TRUE;
        m_bPS2      = TRUE;
        m_bGCN      = TRUE;
    }
    else if ( pScriptObject->GetPlatForm( ) == ParserConst::PT_DEFAULT )
    {
        m_bDefault = TRUE;
    }
    else
    {
        if ( pScriptObject->GetPlatForm( ) & ParserConst::PT_PC )
        {
            m_bDefault = FALSE;
            m_bPC = TRUE;
        }

        if ( pScriptObject->GetPlatForm( ) & ParserConst::PT_XBOX )
        {
            m_bDefault = FALSE;
            m_bXBox = TRUE;
        }

        if ( pScriptObject->GetPlatForm( ) & ParserConst::PT_PS2 )
        {
            m_bDefault = FALSE;
            m_bPS2 = TRUE;
        }

        if ( pScriptObject->GetPlatForm( ) & ParserConst::PT_GCN )
        {
            m_bDefault = FALSE;
            m_bGCN = TRUE;
        }
    }
}

CScriptObject::RT_CREATION_TYPE CModifyObjectDlg::GetScriptObjectCreationType() const
{
    return(m_eCreationType);
}


BEGIN_MESSAGE_MAP(CModifyObjectDlg, CDialog)
//{{AFX_MSG_MAP(CModifyObjectDlg)
    ON_WM_CREATE()
    ON_EN_KILLFOCUS(IDC_EDIT_OBJECT_NAME, OnKillfocusEditObjectName)
	ON_BN_CLICKED(IDC_CHECK_DEFAULT, OnCheckDefault)
	ON_BN_CLICKED(IDC_CHECK_ALL, OnCheckAll)
	ON_BN_CLICKED(IDC_CHECK_GCN, OnCheckGcn)
	ON_BN_CLICKED(IDC_CHECK_PC, OnCheckPc)
	ON_BN_CLICKED(IDC_CHECK_PS2, OnCheckPs2)
	ON_BN_CLICKED(IDC_CHECK_XBOX, OnCheckXbox)
	ON_BN_CLICKED(IDC_BUTTON_HELP, OnButtonHelp)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CModifyObjectDlg message handlers



int CModifyObjectDlg::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CDialog::OnCreate(lpCreateStruct) == -1)
        return -1;

    // TODO: Add your specialized creation code here

    return 0;
}

BOOL CModifyObjectDlg::OnInitDialog()
{
    CDialog::OnInitDialog();

    ASSERT(m_pScriptObject);
    ASSERT(m_pScriptObject->GetValid());

    m_strClassName = m_pScriptObject->GetClassName();
    m_strObjectName = m_pScriptObject->GetName();

    if (m_pScriptObject->GetCreationType() == CScriptObject::RT_CREATE)
    {
        CheckRadioButton(IDC_RADIO_CREATE, IDC_RADIO_WITH, IDC_RADIO_CREATE);
    }
    else if (m_pScriptObject->GetCreationType() == CScriptObject::RT_WITH)
    {
        CheckRadioButton(IDC_RADIO_CREATE, IDC_RADIO_WITH, IDC_RADIO_WITH);
    }

    UpdateData(FALSE);

    return TRUE;  // return TRUE unless you set the focus to a control
    // EXCEPTION: OCX Property Pages should return FALSE
}

void CModifyObjectDlg::OnOK()
{
    // object name cannot contain those characters
    if (m_strObjectName.FindOneOf(" \t\r\n ~!@#$%^&*()-=+\\|[]{};\':\",./<>?") != -1)
    {
        ::AfxMessageBox("Object name contain invalid character.");
        return;
    }

    UpdateData(TRUE);

    switch(GetCheckedRadioButton(IDC_RADIO_CREATE, IDC_RADIO_WITH))
    {
    case IDC_RADIO_CREATE:
        {
            m_eCreationType = CScriptObject::RT_CREATE;
        }
        break;

    case IDC_RADIO_WITH:
        {
            m_eCreationType = CScriptObject::RT_WITH;
        }
        break;
    }

    CDialog::OnOK();
}

void CModifyObjectDlg::OnKillfocusEditObjectName()
{
}

void CModifyObjectDlg::OnCheckDefault() 
{
    UpdateData( TRUE );

    // if Default check button is checked, disable GCN, XBox, PC, and PS2 check box
    if ( m_bDefault == TRUE )
    {
        m_bGCN = FALSE;
        m_bPC  = FALSE;
        m_bPS2 = FALSE;
        m_bXBox = FALSE;

        // default and all are mutually exclusive
        m_bAll = FALSE;
    }

    UpdateData( FALSE );
}

void CModifyObjectDlg::OnCheckAll() 
{
    UpdateData( TRUE );

    // if All check button is checked, disable GCN, XBox, PC, and PS2 check box
    if ( m_bAll == TRUE )
    {
        m_bGCN = TRUE;
        m_bPC  = TRUE;
        m_bPS2 = TRUE;
        m_bXBox = TRUE;

        // default and all are mutually exclusive
        m_bDefault = FALSE;
    }

    UpdateData( FALSE );
}

void CModifyObjectDlg::OnCheckGcn() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyObjectDlg::OnCheckPc() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyObjectDlg::OnCheckPs2() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyObjectDlg::OnCheckXbox() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyObjectDlg::OnButtonHelp() 
{
    AfxMessageBox( ID_PLATFORM_HELP_STRING );	
}

ParserConst::PlatformType CModifyObjectDlg::GetPlatform( ) const
{
    // if no option is selected, use Default
    ParserConst::PlatformType ePlatForm = (ParserConst::PlatformType)
        (
           ( m_bAll ?  ParserConst::PT_ALL     : 0 ) |
           ( m_bPC ?   ParserConst::PT_PC      : 0 ) |
           ( m_bXBox ? ParserConst::PT_XBOX    : 0 ) |
           ( m_bPS2 ?  ParserConst::PT_PS2     : 0 ) |
           ( m_bGCN ?  ParserConst::PT_GCN     : 0 ) |
           ( m_bDefault ? ParserConst::PT_DEFAULT : 0)
        );

    if ( ePlatForm == NULL )
    {
        return ParserConst::PT_DEFAULT;
    }
    else
    {
        return ePlatForm;
    }
}
