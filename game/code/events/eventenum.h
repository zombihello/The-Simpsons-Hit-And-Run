//=============================================================================
// Copyright (C) 2002 Radical Entertainment Ltd.  All rights reserved.
//
// File:        eventenum.h
//
// Description: Enumeration of all the unique Event IDs
//
// History:     + Created -- Darwin Chau
//
//=============================================================================

#ifndef EVENTENUM_H
#define EVENTENUM_H

#ifdef WORLD_BUILDER
#include "../meta/locatorevents.h"
#else
#include <meta/locatorevents.h>
#endif

enum EventEnum
{   
    // The next two "events" must appear in consecutive order.
    //
    EVENT_LOCATOR,
    EVENT_PLACEHOLDER = EVENT_LOCATOR + LocatorEvent::NUM_EVENTS,

    // Now add the rest of the events.
    //

    //Chuck Tree of Woe Negative Feedback for negative feedback sound
    EVENT_TREE_OF_WOE_NEGATIVE_FEEDBACK,

    //Mission Vehicle Creatation and Release

    EVENT_MISSION_VEHICLE_CREATED,
    EVENT_MISSION_VEHICLE_RELEASED,

    EVENT_KICK,
    EVENT_STOMP,
    EVENT_DOUBLEJUMP,


    EVENT_BREAK_CAMERA,
    EVENT_BONUS_MISSION_CHARACTER_APPROACHED,
    EVENT_OBJECT_DESTROYED,
    EVENT_VEHICLE_VEHICLE_COLLISION,
    EVENT_VEHICLE_DESTROYED,
    EVENT_VEHICLE_DESTROYED_BY_USER,
    EVENT_VEHICLE_DESTROYED_SYNC_SOUND,
    EVENT_VEHICLE_DAMAGED,    
    EVENT_VEHICLE_SUSPENSION_BOTTOMED_OUT,
    EVENT_USER_VEHICLE_ADDED_TO_WORLD,
    EVENT_USER_VEHICLE_REMOVED_FROM_WORLD,
    EVENT_GETINTOVEHICLE_START,
    EVENT_GETINTOVEHICLE_END,
    EVENT_GETOUTOFVEHICLE_START,
    EVENT_GETOUTOFVEHICLE_END,
    //EVENT_GETINTOTRAFFIC_END,
    //EVENT_GETOUTOFTRAFFIC_END,
    EVENT_ENTERING_TRAFFIC_CAR,
    EVENT_ENTERING_PLAYER_CAR,
    EVENT_ENTER_INTERIOR_START,
    EVENT_ENTER_INTERIOR_TRANSITION_START,
    EVENT_ENTER_INTERIOR_TRANSITION_END,
    EVENT_ENTER_INTERIOR_END,
    EVENT_EXIT_INTERIOR_START,
    EVENT_EXIT_INTERIOR_END,
    EVENT_INTERIOR_SWITCH,
    EVENT_COLLECTED_COINS,
    EVENT_LOST_COINS,
    EVENT_SPAWNED_COINS,
    EVENT_BOSS_DESTROYED_PLAYER_CAR,
    EVENT_BOSS_DAMAGED,
    EVENT_COLAPROP_DESTROYED,
    EVENT_VEHICLE_COLLECTED_PROP,
    EVENT_ABDUCTED,
    // RenderManager Events
    //
    EVENT_INTERIOR_LOADED,
    EVENT_INTERIOR_DUMPED,
    EVENT_INTERIOR_LOAD_START,
    EVENT_FIRST_DYNAMIC_ZONE_START,
    EVENT_FIRST_DYNAMIC_ZONE_END,
    EVENT_ALL_DYNAMIC_ZONE_END,
    EVENT_DYNAMIC_ZONE_LOAD_ENDED,
    EVENT_NAMED_DYNAMIC_ZONE_LOAD_ENDED,
    EVENT_ALL_DYNAMIC_ZONES_DUMPED,

    // Mission events
    //
    EVENT_WAYAI_AT_DESTINATION,
    EVENT_WAYAI_HIT_LAST_WAYPOINT,
    EVENT_WAYAI_HIT_WAYPOINT,
    EVENT_WAYAI_HIT_CHECKPOINT,
    EVENT_MISSION_RESET,
    EVENT_DESTINATION_REACHED,
    EVENT_COLLECT_OBJECT,
    EVENT_GAG_START,
    EVENT_GAG_END,
    EVENT_INTERACTIVE_GAG,
    EVENT_GAG_FOUND,
    EVENT_DUMP_STATUS,

    EVENT_MISSION_INTRO,
    EVENT_MISSION_START,
    EVENT_MISSION_OBJECTIVE_NEW,
    EVENT_SHOW_MISSION_OBJECTIVE, // pEventData = mission objective message ID

    EVENT_MISSION_DRAMA,
    EVENT_CHANGE_MUSIC,
    EVENT_CHANGE_MUSIC_STATE,

    EVENT_STAGE_COMPLETE,
    EVENT_STAGE_TRANSITION_FAILED,
    EVENT_MISSION_FAILURE,
    EVENT_MISSION_SUCCESS,

    EVENT_MISSION_CHARACTER_RESET,
    EVENT_LEVEL_START,

	//Chuck: Attempting to Enter Gamble Race, and other Gamble Race Events
	EVENT_ATTEMPT_TO_ENTER_GAMBLERACE,
    EVENT_ENTER_GAMBLERACE_SUCCESS,
    EVENT_ENTER_GAMBLERACE_FAILURE,
    EVENT_GAMBLERACE_SUCCESS,
    EVENT_GAMBLERACE_FAILURE,

    //Chuck: mission Cancel and abort

    EVENT_USER_CANCEL_MISSION_BRIEFING,
    EVENT_USER_CANCEL_PAUSE_MENU,

    //Chuck: Get out of car condition

    EVENT_OUTOFCAR_CONDITION_ACTIVE,
    EVENT_OUTOFCAR_CONDITION_INACTIVE,
    


    
    EVENT_KICK_NPC,

    // Sound events
    //
    EVENT_FE_MENU_SELECT,
    EVENT_FE_MENU_BACK,
    EVENT_FE_MENU_UPORDOWN,
    EVENT_FE_START_GAME_SELECTED,
    EVENT_FE_CHEAT_SUCCESS,
    EVENT_FE_CHEAT_FAILURE,
    EVENT_FE_CONTINUE,
    EVENT_FE_CANCEL,
    EVENT_FE_PAUSE_MENU_START,
    EVENT_FE_PAUSE_MENU_END,
    EVENT_FE_LOCKED_OUT,

    EVENT_FE_GAG_INIT,      // FE gag animation about to start, prep sound streamer
    EVENT_FE_GAG_START,     // FE gag animation started
    EVENT_FE_GAG_STOP,      // FE gag animation stopped

    EVENT_FE_CREDITS_NEW_LINE,  // new line displayed on credits screen (event ID = line number)

    EVENT_DIALOG_SHUTUP,

    EVENT_HUD_LAP_UPDATED,  // sound fx when lap couter is updated
    EVENT_HUD_TIMER_BLINK,  // sound fx for blinking timer

    EVENT_PHONE_BOOTH_BUSY, // phone booth inaccessible

    EVENT_COLLISION,
    EVENT_CAMERA_CHANGE,

    EVENT_MINOR_CRASH,
    EVENT_MINOR_VEHICLE_CRASH,
    EVENT_BIG_CRASH,
    EVENT_BIG_VEHICLE_CRASH,

    EVENT_BIG_BOOM_SOUND,
    EVENT_BARREL_BLOWED_UP,

    EVENT_BURNOUT,
    EVENT_BURNOUT_END,
    EVENT_HIT_BREAKABLE,
    EVENT_HIT_MOVEABLE,
    EVENT_BIG_AIR,

    EVENT_FOOTSTEP,
    EVENT_JUMP_TAKEOFF,
    EVENT_JUMP_LANDING,
    EVENT_PEDESTRIAN_SMACKDOWN,
    EVENT_TURBO_START,
    EVENT_CHARACTER_TIRED_NOW,

    EVENT_WRONG_SIDE_DUMBASS,

    EVENT_PEDESTRIAN_DODGE,

    EVENT_CARD_COLLECTED,
    EVENT_BIG_RED_SWITCH_PRESSED,
    EVENT_BREAK_CAMERA_OR_BOX,

    EVENT_TUTORIAL_DIALOG_PLAY,
    EVENT_TUTORIAL_DIALOG_DONE,

    EVENT_CHASE_VEHICLE_SPAWNED,
    EVENT_CHASE_VEHICLE_DESTROYED,
    EVENT_CHASE_VEHICLE_PROXIMITY,

    EVENT_TIME_RUNNING_OUT,
    EVENT_RACE_PASSED_AI,
    EVENT_RACE_GOT_PASSED_BY_AI,

    EVENT_POSITIONAL_SOUND_TRIGGER_HIT,

    EVENT_PC_NPC_COLLISION,
    EVENT_PLAYER_CAR_HIT_NPC,
    EVENT_PLAYER_MAKES_LIGHT_OF_CAR_HITTING_NPC,
    EVENT_KICK_NPC_SOUND,
    EVENT_HIT_HEAD,
    EVENT_DEATH_VOLUME_SOUND,

    EVENT_TRAFFIC_SPAWN,
    EVENT_TRAFFIC_REMOVE,

    EVENT_TRAFFIC_GOT_HIT,
    EVENT_TRAFFIC_IMPEDED, // Hmm.. could differentiate diff sounds for impeded by character or a vehicle... 

    EVENT_PLAYER_VEHICLE_HORN,
    EVENT_TRAFFIC_HORN,

    EVENT_DING_DONG,

    EVENT_PHONE_BOOTH_RIDE_REQUEST,
    EVENT_PHONE_BOOTH_NEW_VEHICLE_SELECTED,
    EVENT_PHONE_BOOTH_OLD_VEHICLE_RESELECTED,
    EVENT_PHONE_BOOTH_CANCEL_RIDEREPLY_LINE,

    EVENT_TAIL_LOST_DIALOG,
    EVENT_MISSION_SUCCESS_DIALOG,

    EVENT_VILLAIN_TAIL_EVADE,
    EVENT_VILLAIN_CAR_HIT_PLAYER,

    EVENT_AMBIENT_GREETING,
    EVENT_AMBIENT_RESPONSE,

    EVENT_AMBIENT_ASKFOOD,
    EVENT_AMBIENT_FOODREPLY,

    EVENT_WASP_CHARGING,
    EVENT_WASP_CHARGED,
    EVENT_WASP_ATTACKING,
    EVENT_WASP_BLOWED_UP,
    EVENT_WASP_BULLET_FIRED,
    EVENT_WASP_BULLET_MISSED,
    EVENT_WASP_BULLET_HIT_CHARACTER_STYLIZED_VIOLENCE_FOLLOWS,
    EVENT_WASP_APPROACHED,

    EVENT_MISSION_COLLECTIBLE_PICKED_UP,

    EVENT_HIT_AND_RUN_START,
    EVENT_HIT_AND_RUN_CAUGHT,
    EVENT_HIT_AND_RUN_EVADED,
    EVENT_HIT_AND_RUN_METER_THROB,

    EVENT_HAGGLING_WITH_GIL,

    EVENT_START_ANIMATION_SOUND,
    EVENT_STOP_ANIMATION_SOUND,

    EVENT_START_ANIM_ENTITY_DSG_SOUND,
    EVENT_STOP_ANIM_ENTITY_DSG_SOUND,

    EVENT_PLAY_BIRD_SOUND,

    EVENT_SUPERSPRINT_WIN,
    EVENT_SUPERSPRINT_LOSE,

    EVENT_PLAY_CREDITS,
    EVENT_PLAY_FE_MUSIC,
    EVENT_PLAY_MUZAK,
    EVENT_PLAY_IDLE_MUSIC,
    EVENT_STOP_THE_MUSIC,

    EVENT_AVATAR_VEHICLE_TOGGLE,

    EVENT_MISSION_BRIEFING_ACCEPTED,

    // GUI in-game events
    //
    EVENT_GUI_MISSION_LOAD_COMPLETE,
    EVENT_GUI_COUNTDOWN_START,
    EVENT_GUI_MISSION_START,
    EVENT_GUI_LEAVING_PAUSE_MENU,
    EVENT_GUI_IRIS_WIPE_CLOSED,
    EVENT_GUI_IRIS_WIPE_OPEN,
    EVENT_GUI_FADE_OUT_DONE,    // fade to black completed
    EVENT_GUI_FADE_IN_DONE,     // fade to game completed
    EVENT_LETTERBOX_CLOSED,     // the letter box has completely closed on the screen
    EVENT_DEATH_VOLUME_SCREEN_BLANK,
    EVENT_GUI_ENTERING_MISSION_SUCCESS_SCREEN,
    EVENT_GUI_TRIGGER_PATTY_AND_SELMA_SCREEN,


    //Conversation EVENTS

    EVENT_CONVERSATION_INIT,
    EVENT_CONVERSATION_INIT_DIALOG,
    EVENT_CONVERSATION_START,
    EVENT_CONVERSATION_SKIP,
    EVENT_CONVERSATION_DONE,
    EVENT_CONVERSATION_DONE_AND_FINISHED, // the letter box screen listens for EVENT_CONVERSATION_DONE,
                                          // and will then trigger EVENT_CONVERSATION_DONE_AND_FINISHED
                                          // at its discretion

    EVENT_IN_GAMEPLAY_CONVERSATION,

    //MouthFlapping EVENTS

    EVENT_PC_TALK,
    EVENT_PC_SHUTUP,
    EVENT_NPC_TALK,
    EVENT_NPC_SHUTUP,
    
    EVENT_OBJECT_KICKED,
   
    //NPC Events
    EVENT_TALK_TO_NPC,

    //Camera shake events
    EVENT_CAMERA_SHAKE,
    EVENT_RUMBLE_COLLISION,
    
    EVENT_BONUS_MISSION_DIALOGUE,

    //This is the dumping of Dynaload sections in worldrenderlayer.
    EVENT_DUMP_DYNA_SECTION,

    //Rewards and Unlockable events
    EVENT_UNLOCKED_CAR,
    EVENT_UNLOCKED_SKIN,
    EVENT_COMPLETED_ALLSTREETRACES,
    EVENT_COMPLETED_BONUSMISSIONS,
    EVENT_COLLECTED_ALLCOINS,
    EVENT_COLLECTED_ALLCARDS,
    EVENT_DESTROYED_ALLCAMERAS,

    EVENT_SWITCH_SKIN,

    //Collecting Wrench To Repair car

    EVENT_REPAIR_CAR,
    EVENT_COLLECTED_WRENCH,

    // Actor events
    EVENT_ACTOR_CREATED,
    EVENT_ACTOR_REMOVED,

    // Sent when a stateprop is destroyed, param = stateprop pointer
    // This corresponds to the artist-set callback flag "REMOVE_FROM_WORLD"
    EVENT_STATEPROP_DESTROYED,
    // Sent when a stateprop is moved from AI to sim control
    EVENT_STATEPROP_ADDED_TO_SIM,

    //Teleport pads
    EVENT_ENTERED_TELEPORT_PAD,
    EVENT_EXITED_TELEPORT_PAD,
    EVENT_TAKING_TELEPORT,    

    EVENT_LOSE_COLLECTIBLE,

    // Nitro
    EVENT_COLLECTED_NITRO,    
    EVENT_USE_NITRO,

    EVENT_CHARACTER_POS_RESET,
    EVENT_TOGGLE_FIRSTPERSON,

    EVENT_ANIMATED_CAM_SHUTDOWN,

    // Indicates that an exploding car has finished playing its animation
    EVENT_CAR_EXPLOSION_DONE,

    EVENT_STATEPROP_COLLECTIBLE_DESTROYED,

    EVENT_AVATAR_OFF_ROAD,

    EVENT_AVATAR_ON_ROAD,

    NUM_EVENTS
};


#endif // EVENTENUM_H
