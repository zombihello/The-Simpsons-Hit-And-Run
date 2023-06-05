@perl sub max { my($a,$b) = @_; ($a>$b)?($a):($b);}
@perl sub pad { my($len,$str) = @_; sprintf("%-${len}s",$str); }
@perl %typemap = ( "string" => "char*", 
@perl              "COLOUR" => "unsigned long",
@perl              "ULONG" => "unsigned long",
@perl              "UBYTE" => "unsigned char",
@perl              "UWORD" => "unsigned short",
@perl              "WORD" => "short",
@perl              "float" => "float",
@perl            );
@perl %typeinit = ( "string" => "NULL", 
@perl               "COLOUR" => "0",
@perl               "ULONG" => "0",
@perl               "UBYTE" => "0",
@perl               "UWORD" => "0",
@perl               "WORD" => "0",
@perl               "float" => "0.0f",
@perl            );
@perl %typeget = ( "string" => "GetPString", 
@perl               "COLOUR" => "GetLong",
@perl               "ULONG" => "GetLong",
@perl               "UBYTE" => "GetChar",
@perl               "UWORD" => "GetWord",
@perl               "WORD" =>  "GetWord",
@perl               "float" => "GetFloat",
@perl            );
@perl %typeput = ( "string" => "PutPString", 
@perl               "COLOUR" => "PutLong",
@perl               "ULONG" => "PutLong",
@perl               "UBYTE" => "PutChar",
@perl               "UWORD" => "PutWord",
@perl               "WORD" => "PutWord",
@perl               "float" => "PutFloat",
@perl            );
@perl %typeprint = ( "string" => "\\\"%s\\\"", 
@perl               "COLOUR" => "%08lx",
@perl               "ULONG" => "%ld",
@perl               "UBYTE" => "%d",
@perl               "UWORD" => "%d",
@perl               "WORD" => "%d",
@perl               "float" => "%f",
@perl            );
@perl %typeprintlong = ( "string" => "\\\"%s\\\"", 
@perl               "COLOUR" => "  0x%08lx",
@perl               "ULONG" => "%12ld",
@perl               "UBYTE" => "%12d",
@perl               "UWORD" => "%12d",
@perl               "WORD" => "%12d",
@perl               "float" => "%12f",
@perl            );
@perl %typekeyword = ( "string" => "pstring", 
@perl               "COLOUR" => "int  ",
@perl               "ULONG" => "int  ",
@perl               "UBYTE" => "byte ",
@perl               "UWORD" => "short",
@perl               "WORD" => "short",
@perl               "float" => "float",
@perl            );
@perl %typebulkread = ( "string" => 0, 
@perl               "COLOUR" => 1,
@perl               "ULONG" => 1,
@perl               "UBYTE" => 1,
@perl               "UWORD" => 1,
@perl               "WORD" => 1,
@perl               "float" => 1,
@perl            );
@perl $filename = $output_file;
@perl $filename =~ s#^.*/##;
@perl $filename =~ s/\..*//;
@perl print "Generating $output_file\n";
@perl my $upper_name = uc($filename);
// Automatically generated by Jeeves, don't edit.  Edit ${filename}.sc instead

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <memory.h>

#include "${filename}.hpp"
#include "tlString.hpp"
#include "tlFile.hpp"
#include "tlChunk16.hpp"
#include "tlChunkDescription.hpp"

// things included by $filename.sc
@foreach include_list ($inc_level == 0 && !($include_name =~ m/\.hsc/))
@perl my $hppname = $include_name;
@perl $hppname =~ s/\.sc/.hpp/;
#include "$hppname"
@end .. include_list
@foreach class_list
    @perl $ch_id{$class_name} = $chunk_id;
@end .. class_list
@foreach struct_list ($inc_level == 0)

// $struct_name

${struct_name}::~${struct_name}()
{
    @foreach attr_list ($attr_type eq "string")
      @perl $name = lc($attr_name);   
      @perl $type = $attr_type unless defined $type;
    strdelete($name);
    @end
}

void
${struct_name}::Read(tlFile*f )
{
    @perl $needi = 0;
    @perl $needbuf = 0;
    @foreach attr_list
        @perl if(defined $array){$needi = 1;}
        @perl if($attr_type eq "string"){$needbuf = 1;}
    @end 
    @if ($needi)
    unsigned int i;
    @endif
    @if ($needbuf)
    char buf[P3DMAXNAME];
    @endif
    @foreach attr_list
      @perl $name = lc($attr_name);   
      @perl $get = $typeget{$attr_type};   
      @perl $type = $typemap{$attr_type};   
      @perl $type = $attr_type unless defined $type;
      @if ($attr_type eq "string")
    f->GetPString(buf);
    $name = strnew(buf);
      @else
         @if (defined $array)
         @perl my $arraylc = lc $array;
    $name = new ${type}[$arraylc];
    for(i = 0; i < $arraylc; i++)
    {
         @if (defined $get)
        ${name}[i] = f->$get();
         @else
        ${name}[i].Read(f);
         @endif
    }
         @else
    $name = f->$get();
         @endif
      @endif
    @end
}

void
${struct_name}::Write(tlFile*f )
{
    @perl $needi = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl if(defined $array){$needi = 1;}
    @end 
    @if ($needi)
    unsigned int i;
    @endif
    @foreach attr_list ($attr_type ne "Chunk")
    @perl $name = lc($attr_name);   
    @perl $put = $typeput{$attr_type};   
    @if (defined $array)
    @perl $arraylc = lc($array);
    for(i = 0; i < $arraylc ; i++)
    {
        @if (defined $put)
        f->$put(${name}[i]);
        @else
        ${name}[i].Write(f);
        @endif
    }
    @else
    f->$put($name);
    @endif
    @end
}

void
${struct_name}::Print(int index, int indent)
{
    printf("%*s%d\\n",indent,"",(int) index);
    @perl $longest = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl $longest = max($longest, length($attr_name));
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (!defined $print))
        @perl my $prstr = "%d";
        @perl $prstr = $typeprint{$attr_type} if defined $typeprint{$attr_type}; 
        @perl $prstr = $format if defined $format;
        @perl $name1 = pad($longest, $attr_name);
        @perl $name = lc($attr_name);
    printf("%*s  $name1 = $prstr\\n",indent,"",$name);
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (defined $print))
    $print
    @end
}

void
${struct_name}::PrintFormatted(int index, int indent)
{
    @perl $longest = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl $longest = max($longest, length($attr_name));
    @end
    @foreach attr_list ($attr_type ne "Chunk")
        @perl my $prstr = "%d";
        @perl $prstr = $typeprintlong{$attr_type} if defined $typeprintlong{$attr_type}; 
        @perl $prkey = $typekeyword{$attr_type} if defined $typekeyword{$attr_type}; 
        @perl $name = lc($attr_name);
    printf("%*s $prkey $prstr  # $attr_name\\n",indent,"",$name);
    @end
}

void
${struct_name}::Init()
{
 @foreach attr_list ($attr_type ne "Chunk")
    @perl my $init = "0";
    @perl $init = $typeinit{$attr_type} if defined $typeinit{$attr_type}; 
    @perl $init = "NULL" if defined $array;
    @perl $name = lc($attr_name);
    @if (defined $typeinit{$attr_type})
    $name = $init;
    @else
    $name.Init();
    @endif
 @end
}

int
${struct_name}::Describe(tlChunkDescription* desc, int index)
{
    char buf[256];
    sprintf(buf, "%d",(int) index);
    desc->AddMinor(buf);

    @perl $longest = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl $longest = max($longest, length($attr_name));
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (!defined $print))
        @perl my $prstr = "%d";
        @perl $prstr = $typeprint{$attr_type} if defined $typeprint{$attr_type}; 
        @perl $prstr = $format if defined $format;
        @perl $name1 = pad($longest, $attr_name);
        @perl $name = lc($attr_name);
    sprintf(buf,"  $name1 = $prstr",$name);
    desc->AddMinor(buf);
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (defined $print))
//   $print
    @end
    return 1;
}

int
${struct_name}::operator==(const $struct_name& a)
{
 @foreach attr_list ($attr_type ne "Chunk")
    @perl $name = lc($attr_name);
    if(!($name == a.$name))
    {
        return FALSE;
    }
 @end
    return TRUE;
}

@end .. struct_list

@foreach class_list ($inc_level == 0)

// $class_name

${class_name}::$class_name()
{
    ident = $chunk_id;
 @foreach attr_list ($attr_type ne "Chunk")
    @perl my $init;
    @perl $init = $typeinit{$attr_type} if defined $typeinit{$attr_type}; 
    @perl $init = "NULL" if defined $array;
    @perl $name = lc($attr_name);
    @if (defined $init)
    $name = $init;
    @else
    $name.Init();
    @endif
 @end
}

${class_name}::$class_name(${class_name}* ch)
{
    @perl $needi = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl if(defined $array){$needi = 1;}
    @end 
    @if ($needi)
    unsigned int i;

    @endif
    ident = ch->ident;

 @foreach attr_list ($attr_type ne "Chunk")
    @perl my $init;
    @perl $init = $typeinit{$attr_type} if defined $typeinit{$attr_type}; 
    @perl $init = "NULL" if defined $array;
    @perl $name = lc($attr_name);
    @perl $type = $typemap{$attr_type};   
    @perl $type = $attr_type unless defined $type;
    @if (defined $array)
    @perl my $arraysize = lc($array);
    $name = new ${type}[$arraysize];
    for( i = 0; i < $arraysize ; i++ )
    {
        @if($attr_type eq "string")
        ${name}[i] = strnew(ch->${name}[i]);
        @else
        ${name}[i] = ch->${name}[i];
        @endif
    }
    @else
    $name = ch->$name;
    @endif
 @end

    for(int subch = 0; subch < ch->SubChunkCount(); subch++)
    {
        AppendSubChunk(ch->GetSubChunk(subch)->Copy());
    }
}

${class_name}::~$class_name()
{
 @foreach attr_list ($attr_type eq "string")
    @perl $name = lc($attr_name);
    @if (defined $array)
    @perl my $arraysize = lc($array);
    for(unsigned int i = 0; i < $arraysize ; i++ )
    {
        if(${name}[i] != NULL)
        {
            strdelete(${name}[i]);
        }
    }
    @else
    if($name != NULL){
        strdelete($name);
    }
    @endif
 @end
 @foreach attr_list
  @if (defined $array)
    @perl $name = lc($attr_name);
    if($name != NULL){
        delete[] $name;
    }
  @endif
 @end
}

${class_name}::$class_name(tlReadChunk16* ch)
{
    assert(ch->GetID() == $chunk_id);
    ident = $chunk_id;

    tlFile* f = ch->GetFile();
    @perl $needi = 0;
    @perl $needbuf = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl if(defined $array && !$typebulkread{$attr_type} ){$needi = 1;}
        @perl if($attr_type eq "string"){$needbuf = 1;}
    @end 
    @if ($needi)
    unsigned int i;
    @endif
    @if ($needbuf)
    char buf[P3DMAXNAME];
    @endif

    @foreach attr_list ($attr_type ne "Chunk")
      @perl $name = lc($attr_name);   
      @perl $get = $typeget{$attr_type};   
      @perl $bulk = $typebulkread{$attr_type};   
      @perl $type = $typemap{$attr_type};   
      @perl $type = $attr_type unless defined $type;
      @if ($attr_type eq "string")
         @if (defined $array)
            @perl my $arraylc = lc $array;
    $name = new ${type}[$arraylc];
    for(i = 0; i < $arraylc; i++)
    {
        f->GetPString(buf);
        ${name}[i] = strnew(buf);
    }
         @else
    f->GetPString(buf);
    $name = strnew(buf);
         @endif
      @else
         @if (defined $array)
         @perl my $arraylc = lc $array;
    $name = new ${type}[$arraylc];
         @if ($bulk)
    f->GetBytes($name,sizeof($type) * $arraylc);
         @else
    for(i = 0; i < $arraylc; i++)
    {
            @if (defined $get)
        ${name}[i] = f->$get();
            @else
        ${name}[i].Read(f);
            @endif
    }
         @endif
         @else
          @if (defined $get)
    $name = f->$get();
          @else
    $name.Read(f);
          @endif
         @endif
      @endif
    @end
    while (!ch->EndOfChunk()){
        AppendSubChunk(LoadSubChunk(f));
    }
}

tlDataChunk*
${class_name}::Create(tlReadChunk16* ch)
{
    tlDataChunk* dtCh = new ${class_name}(ch);
    return dtCh;
}

void
${class_name}::Write(tlFile* f)
{
    tlWriteChunk16 ch(f, ident);
    @perl $needi = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl if(defined $array && !$typebulkread{$attr_type} ){$needi = 1;}
    @end 
    @if ($needi)
    unsigned int i;
    @endif

    @foreach attr_list ($attr_type ne "Chunk")
    @perl $name = lc($attr_name);   
    @perl $put = $typeput{$attr_type};   
    @perl $bulk = $typebulkread{$attr_type};   
    @if (defined $array)
    @perl $arraylc = lc($array);
      @if ($bulk)
    f->PutBytes($name,sizeof($type) * $arraylc);
      @else
    for(i = 0; i < $arraylc ; i++)
    {
        @if (defined $put)
        f->$put(${name}[i]);
        @else
        ${name}[i].Write(f);
        @endif
    }
    @endif
    @else
     @if (defined $put)
    f->$put($name);
     @else
    $name.Write(f);
     @endif
    @endif
    @end

    for(int subch = 0; subch < subcount; subch++)
    {
        SubChunkArray[subch]->Write(f);
    }
}

void
${class_name}::Print(int indent, unsigned int depth, unsigned int typemask)
{
    @perl $needi = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl if(defined $array){$needi = 1;}
    @end 
    @if ($needi)
    unsigned int i;
    @endif

    if ( depth == 0 )
    {
        return;
    }

    printf("%*s$class_name (%4x)\\n",indent,"",(int) ident);
    @perl $longest = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl $longest = max($longest, length($attr_name));
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (!defined $print))
        @perl my $prstr = "%d";
        @perl $prstr = $typeprint{$attr_type} if defined $typeprint{$attr_type}; 
        @perl $prstr = $format if defined $format;
        @perl $name1 = pad($longest, $attr_name);
        @perl $name = lc($attr_name);
        @if (defined $array)
        @perl $arraylc = lc($array);
    printf("%*s  $attr_name:\\n",indent,"");
    for( i=0; i < $arraylc; i++)
    {
        @if (defined $typeprint{$attr_type} || defined $format)
         printf("%*s    %d $prstr\\n",indent,"",i,${name}[i]);
        @else
         ${name}[i].Print(i, indent + 4);
        @endif
    }
        @else
          @if (defined $typeprint{$attr_type} || defined $format)
    printf("%*s  $name1 = $prstr\\n",indent,"",$name);
          @else
    printf("%*s  $attr_name:\\n",indent,"");
    ${name}.Print(0, indent+4);
          @endif
        @endif
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (defined $print))
        @if (defined $array)
        @perl $arraylc = lc($array);
    printf("%*s  $attr_name:\\n",indent,"");
    for( i=0; i < $arraylc; i++)
    {
        $print;
    }
        @else
    $print;
        @endif
    @end

    if(subcount){
        printf("%*s  SubChunks (%d):\\n",indent,"",subcount);
        for(int subch = 0; subch < subcount; subch++)
        {
            SubChunkArray[subch]->Print(indent+4, depth-1, typemask);
        }
    }
}

void
${class_name}::PrintFormatted(int indent)
{
    @perl $needi = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl if(defined $array){$needi = 1;}
    @end 
    @if ($needi)
    unsigned int i;
    @endif
    printf("%*schunk 0x%04x  $ $class_name\\n",indent,"",(int) ident);
    @perl $longest = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl $longest = max($longest, length($attr_name));
    @end
    @foreach attr_list ($attr_type ne "Chunk")
        @perl my $prstr = "%d";
        @perl $prstr = $typeprintlong{$attr_type} if defined $typeprintlong{$attr_type}; 
        @perl $prkey = $typekeyword{$attr_type} if defined $typekeyword{$attr_type}; 
        @perl $name = lc($attr_name);
        @if (defined $array)
        @perl $arraylc = lc($array);
        @if (defined $typeprintlong{$attr_type})
    printf("%*s  repeat 1 $prkey # $attr_name\\n",indent,"");
        @else
    printf("%*s  # $attr_name\\n",indent,"");
        @endif
    for( i=0; i < $arraylc; i++)
    {
        @if (defined $typeprintlong{$attr_type})
         printf("%*s    $prstr\\n",indent,"",${name}[i]);
        @else
         ${name}[i].PrintFormatted(i,indent+4);
        @endif
    }
        @if (defined $typeprintlong{$attr_type})
    printf("%*s  endrepeat\\n",indent,"");
        @endif
        @else
          @if (defined $typeprintlong{$attr_type})
    printf("%*s  $prkey $prstr # $attr_name\\n",indent,"",$name);
          @else
    printf("%*s  # $attr_name:\\n",indent,"");
    ${name}.PrintFormatted(0, indent+4);
          @endif
        @endif
    @end

    if(subcount)
    {
        for(int i=0;i<subcount;i++)
        {
            SubChunkArray[i]->PrintFormatted(indent+2);
        }
    }
    printf("%*sendchunk\\n",indent,"");
}

int
${class_name}::Describe(tlChunkDescription* desc)
{
    char buf[256];

    @perl $needi = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl if(defined $array){$needi = 1;}
    @end 
    @if ($needi)
    unsigned int i;
    @endif

    int hasChildren = (subcount != 0);

    sprintf(buf,"$class_name (%4x)",(int) ident);
    desc->SetMajor(buf);

    @perl $longest = 0;
    @foreach attr_list ($attr_type ne "Chunk")
        @perl $longest = max($longest, length($attr_name));
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (!defined $print))
        @perl my $prstr = "%d";
        @perl $prstr = $typeprint{$attr_type} if defined $typeprint{$attr_type}; 
        @perl $prstr = $format if defined $format;
        @perl $name1 = pad($longest, $attr_name);
        @perl $name = lc($attr_name);
        @if (defined $array)
        @perl $arraylc = lc($array);
    sprintf(buf,"$attr_name:");
    desc->AddMinor(buf);
    for( i=0; i < $arraylc; i++)
    {
        @if (defined $typeprint{$attr_type} || defined $format)
         sprintf(buf,"  %d $prstr", i,${name}[i]);
         desc->AddMinor(buf);
        @else
         ${name}[i].Describe(desc,i);
        @endif
    }
        @else
          @if (defined $typeprint{$attr_type} || defined $format)
    sprintf(buf,"  $name1 = $prstr",$name);
    desc->AddMinor(buf);
          @else
    sprintf(buf,"  $attr_name:");
    desc->AddMinor(buf);
    ${name}.Describe(desc,0);
          @endif
        @endif
    @end
    @foreach attr_list (($attr_type ne "Chunk") && (defined $print))
        @if (defined $array)
        @perl $arraylc = lc($array);
    sprintf(buf, " $attr_name:");
    desc->AddMinor(buf);
    for( i=0; i < $arraylc; i++)
    {
//      $print;
    }
        @else
//   $print;
        @endif
    @end

    return 1;
}

tlDataChunk*
${class_name}::Copy()
{
    return new ${class_name}(this);
}

tlDataChunk*
${class_name}::LoadSubChunk(tlFile* f)
{
    tlDataChunk *dch;
    tlReadChunk16  ch(f);
    ch.ReadNext();
    UWORD  id = ch.GetID();
    @perl $needswitch = 0;
    @foreach attr_list ($attr_type eq "Chunk")
        @perl $needswitch = 1;
    @end   
    @if ($needswitch)
    switch(id){
    @foreach attr_list ($attr_type eq "Chunk")
    case $ch_id{$attr_name}:
        dch = new $attr_name(&ch);
        break;
    @end
    default:
        dch = new tlDataChunk(id);
        int size = ch.GetDataSize();
        char* buf = new char[size];
        f->GetBytes(buf, size);
        dch->SetData(buf, size);
        delete buf;
    }
    @else
    dch = new tlDataChunk(id);
    int size = ch.GetDataSize();
    char* buf = new char[size];
    f->GetBytes(buf, size);
    dch->SetData(buf, size);
    delete buf;
    @endif
    return dch;
}

// Accessor Methods for $class_name
@foreach attr_list ($attr_type ne "Chunk")
    @perl my $attr, $void;
    @perl my $type;
    @perl $type = $attr_type;
    @perl $type = $typemap{$attr_type} if defined $typemap{$attr_type}; 
    @perl $basetype = $type;
    @perl $type = "const " . $type if (($attr_type eq "string") && (!defined $array));
    @perl $type .= "*" if defined $array;
    @perl $name = lc($attr_name);

$type 
${class_name}::$attr_name()
{
    return $name;
}

@if (defined $array)
void 
${class_name}::Set$attr_name($type val, int count)
{
    if($name)
    {
        delete[] $name;
    }      
    $basetype* newval = new ${basetype}[count];
    for(int i = 0; i < count ; i++)
    {
        @if ($attr_type eq "string")
        newval[i] = strnew(val[i]);
        @else
        newval[i] = val[i];
        @endif
    }
    $name = newval;
}
@else
void 
${class_name}::Set$attr_name($type val)
{
    @if ($attr_type eq "string")
    if($name){
        strdelete($name);
    }
    $name = strnew(val);
    @else
    $name = val;
    @endif
}
@endif
@end .. attr_list
@end .. class_list


