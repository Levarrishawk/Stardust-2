jo_kelsev = ConvoTemplate:new {
  initialScreen = "first_screen",
  templateType = "Lua",
  luaClassHandler = "jo_kelsev_conv_handler",
  screens = {}
}


--Intro First
jo_kelsev_first_screen = ConvoScreen:new {
  id = "first_screen",
  leftDialog = "@conversation/som_exploration_marker:s_15",  -- Welcome to our fiery moon. I have noticed you around and was hoping for a chance to speak with you. You seem very interested in helping others and I was wondering if you would be willing to perform a small task for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_17", "opt1"},  -- Sure. What is it you need?
    {"@conversation/som_exploration_marker:s_74.", "deny"}  -- No thanks.  I think I will pass on this job.
  
  }
}
jo_kelsev:addScreen(jo_kelsev_first_screen);

jo_kelsev_deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "@conversation/som_exploration_marker:s_78",  -- Of course. I wouldn't want to impose on you too much.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_17", "opt1"}, 
   -- {"@conversation/som_exploration_marker:s_74.", "deny"}
  
  }
}
jo_kelsev:addScreen(jo_kelsev_deny);



opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "@conversation/som_exploration_marker:s_19", -- Well, I have put up a number of markers around the planet. They are very helpful to keep track of certain important areas. Our world has a tendency to shift unexpectedly and it is important that we carefully mark different areas. Naturally, the markers also shift, so we occasionally have to manually check them out to make sure they are still valid.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_21","opt1a"}, -- Naturally.  So what is it I can do for you?
    --{"No.","deny1"},
  }
}
jo_kelsev:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "@conversation/som_exploration_marker:s_23", -- Well, recent events have left me extremely short-handed, and I was hoping that you would check out these markers for me. The job is really simple. All you need to do is find the markers and activate them to make sure they still have valid information on them.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_25","opt1b"},  -- That seems easy enough.
  }
}
jo_kelsev:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "@conversation/som_exploration_marker:s_27", -- It would be, except that due to the shifting of our moon's surface, I cannot give you precise locations. All I can do is give you general directions to where each one should be. Each of Mustafar's main areas has several of these markers scattered throughout them. I will need you to activate each area's markers individually.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_29","opt1c"},  -- What would this sort of job pay?
  }
}
jo_kelsev:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "@conversation/som_exploration_marker:s_31", -- It would be, except that due to the shifting of our moon's surface, I cannot give you precise locations. All I can do is give you general directions to where each one should be. Each of Mustafar's main areas has several of these markers scattered throughout them. I will need you to activate each area's markers individually.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_33","opt1d"},  -- What is a Tanray Heart Crystal?
  }
}
jo_kelsev:addScreen(opt1c);

opt1d = ConvoScreen:new {
  id = "opt1d",
  leftDialog = "@conversation/som_exploration_marker:s_35", -- It would be, except that due to the shifting of our moon's surface, I cannot give you precise locations. All I can do is give you general directions to where each one should be. Each of Mustafar's main areas has several of these markers scattered throughout them. I will need you to activate each area's markers individually.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_37","choose_search_location_1"},  -- Okay, we have a deal
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(opt1d);

-----------------------------------------------------------------------------------
-- Choice Screens  1-7
-- --------------------------------------------------------------------------------
choose_search_location_1 = ConvoScreen:new {
  id = "choose_search_location_1",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location_1);

choose_search_location_2 = ConvoScreen:new {
  id = "choose_search_location_2",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    --{"@conversation/som_exploration_marker:s_46","choose_facility"},  
    {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location_2);

choose_search_location_3 = ConvoScreen:new {
  id = "choose_search_location_3",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    --{"@conversation/som_exploration_marker:s_46","choose_facility"},  
    --{"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location_3);

choose_search_location_4 = ConvoScreen:new {
  id = "choose_search_location_4",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    --{"@conversation/som_exploration_marker:s_46","choose_facility"},  
    --{"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
    {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location_4);

choose_search_location_5 = ConvoScreen:new {
  id = "choose_search_location_5",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    --{"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
    {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location_5);

choose_search_location_6 = ConvoScreen:new {
  id = "choose_search_location_6",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    --{"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    {"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location_6);

choose_search_location_7 = ConvoScreen:new {
  id = "choose_search_location_7",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    --{"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
    {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location_7);


----------------------------------------------------------------------------------------
-- Quest Starters
-- -------------------------------------------------------------------------------------
choose_facility = ConvoScreen:new {
  id = "choose_facility",
  leftDialog = "@conversation/som_exploration_marker:s_48", -- Sure do. Remember, you will receive five thousand credits per area searched, and if you complete them all, I will toss in a Tanray Heart Crystal.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_facility);

choose_crystal_flats = ConvoScreen:new {
  id = "choose_crystal_flats",
  leftDialog = "@conversation/som_exploration_marker:s_52", -- Of course. Remember, you will receive five thousand credits per area searched, and if you complete them all, I will toss in a Tanray Heart Crystal.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_crystal_flats);

choose_smoking_forest = ConvoScreen:new {
  id = "choose_smoking_forest",
  leftDialog = "@conversation/som_exploration_marker:s_56", -- That is a good choice. Remember, you will receive five thousand credits per area searched and if you complete them all, I will toss in a Tanray Heart Crystal.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_smoking_forest);

choose_central_volcano = ConvoScreen:new {
  id = "choose_central_volcano",
  leftDialog = "@conversation/som_exploration_marker:s_60", -- Always a nice decision. Remember, you will receive five thousand credits per area searched and if you complete them all, I will toss in a Tanray Heart Crystal.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_central_volcano);

choose_burning_plains = ConvoScreen:new {
  id = "choose_burning_plains",
  leftDialog = "@conversation/som_exploration_marker:s_64", -- I hear it is nice this time of year...well as nice as Mustafar gets, anyways. Remember, you will receive five thousand credits per area searched, and if you complete them all, I will toss in a Tanray Heart Crystal.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_burning_plains);

choose_berkens_flow = ConvoScreen:new {
  id = "choose_berkens_flow",
  leftDialog = "@conversation/som_exploration_marker:s_68", -- Ah, Berken's Flow...I learned how to mine there. Remember, you will receive five thousand credits per area searched, and if you complete them all, I will toss in a Tanray Heart Crystal.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_berkens_flow);

choose_tulrus_nesting_grounds = ConvoScreen:new {
  id = "choose_tulrus_nesting_grounds",
  leftDialog = "@conversation/som_exploration_marker:s_72", -- A very fine valley. Remember, you will receive five thousand credits per area searched, and if you complete them all, I will toss in a Tanray Heart Crystal.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_tulrus_nesting_grounds);

--------------------------------------------------------------------------------------------------------
-- Return / Next Quest Leg
--------------------------------------------------------------------------------------------------------

--  Return for more markers / next leg of quest.
welcome_back_1 = ConvoScreen:new {
  id = "welcome_back_1",
  leftDialog = "@conversation/som_exploration_marker:s_10", -- Welcome back. It is good to see you are in good health. Are you back to check on some more markers for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_38","choose_search_location_2"},  -- Yeah, I will check a few more areas for you.
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(welcome_back_1);

welcome_back_2 = ConvoScreen:new {
  id = "welcome_back_2",
  leftDialog = "@conversation/som_exploration_marker:s_10", -- Welcome back. It is good to see you are in good health. Are you back to check on some more markers for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_38","choose_search_location_3"},  -- Yeah, I will check a few more areas for you.
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(welcome_back_2);

welcome_back_3 = ConvoScreen:new {
  id = "welcome_back_3",
  leftDialog = "@conversation/som_exploration_marker:s_10", -- Welcome back. It is good to see you are in good health. Are you back to check on some more markers for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_38","choose_search_location_4"},  -- Yeah, I will check a few more areas for you.
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(welcome_back_3);

welcome_back_4 = ConvoScreen:new {
  id = "welcome_back_4",
  leftDialog = "@conversation/som_exploration_marker:s_10", -- Welcome back. It is good to see you are in good health. Are you back to check on some more markers for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_38","choose_search_location_5"},  -- Yeah, I will check a few more areas for you.
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(welcome_back_4);

welcome_back_5 = ConvoScreen:new {
  id = "welcome_back_5",
  leftDialog = "@conversation/som_exploration_marker:s_10", -- Welcome back. It is good to see you are in good health. Are you back to check on some more markers for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_38","choose_search_location_6"},  -- Yeah, I will check a few more areas for you.
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(welcome_back_5);

welcome_back_6 = ConvoScreen:new {
  id = "welcome_back_6",
  leftDialog = "@conversation/som_exploration_marker:s_10", -- Welcome back. It is good to see you are in good health. Are you back to check on some more markers for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_38","choose_search_location_7"},  -- Yeah, I will check a few more areas for you.
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(welcome_back_6);

--------------------------------------------------------------------------
--   Finished all, issue reward.  
--   ---------------------------------------------------------------------

finished_all = ConvoScreen:new {
  id = "finished_all",
  leftDialog = "@conversation/som_exploration_marker:s_6", -- Hello again, my friend. You certainly have done a wonderful job and saved me all sorts of trouble trying to check all of those markers out. And as promised, here is your Tanray Heart Crystal. Thank you again.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_46","choose_facility"},  
   -- {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
   -- {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
   -- {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
   -- {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    --{"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
   -- {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(finished_all);



-- TODO  Finish this convo, tie it to NPC, convo flow is probably not properly set atm.  - 3/17

addConversationTemplate("jo_kelsev", jo_kelsev);
