package src.com.cme.fiftyp;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cme.commons.base.BaseController;
import com.cme.fiftyp.constants.Constants;
import com.cme.fiftyp.security.dto.ChildView;
import com.cme.fiftyp.security.dto.UserView;

@Controller
public class Navigation extends BaseController
{
   @RequestMapping("/memberships.do")
   public ModelAndView gotoMemberships()
   {
      return new ModelAndView(ConstPageNames.MEMBERSHIPS);
   }
   
   @RequestMapping("/parentsOverview.do")
   public ModelAndView gotoParentsOverview()
   {
      return new ModelAndView(ConstPageNames.PARENTSOVERVIEW);
   }
   
   @RequestMapping("/betterWay.do")
   public ModelAndView gotoBetterway()
   {
      Map<String, Object> model = new HashMap<String, Object>();
      model.put("oldWay", "false");
      return new ModelAndView(ConstPageNames.BETTERWAY, model);
   }
   
   @RequestMapping("/oldWay.do")
   public ModelAndView gotoOldway()
   {
      Map<String, Object> model = new HashMap<String, Object>();
      model.put("oldWay", "true");
      return new ModelAndView(ConstPageNames.BETTERWAY, model);
   }

   @RequestMapping("/howItWorks.do")
   public ModelAndView gotoHowItWorks()
   {
      return new ModelAndView(ConstPageNames.HOWITWORKS);
   }

   @RequestMapping("/kidsEarn.do")
   public ModelAndView gotokidsEarn()
   {
      return new ModelAndView(ConstPageNames.KIDEARN);
   }

   // parentsChoose
   @RequestMapping("/parentsChoose.do")
   public ModelAndView gotoParentsChoose()
   {
      return new ModelAndView(ConstPageNames.PARENTCHOOSE);
   }

   // fiftypGives
   @RequestMapping("/fiftypGives.do")
   public ModelAndView gotoFiftypGives()
   {
      return new ModelAndView(ConstPageNames.FIFTYPGIVES);
   }

   @RequestMapping("/whatIsFiftyP.do")
   public ModelAndView gotoWhatIsFiftyP()
   {
      return new ModelAndView(ConstPageNames.WHATISFIFTYP);
   }
   
   @RequestMapping("/contact.do")
   public ModelAndView gotoContact()
   {
      return new ModelAndView(ConstPageNames.CONTACT);
   }
   
   // preview
   @RequestMapping("/preview.do")
   public ModelAndView gotoPreview()
   {
      return new ModelAndView(ConstPageNames.PREVIEW);
   }

   // kidsFeatures
   @RequestMapping("/kidsFeatures.do")
   public ModelAndView gotoKidsFeatures()
   {
      return new ModelAndView(ConstPageNames.KIDFEATURES);
   }

   // parentsFeatures
   @RequestMapping("/parentsFeatures.do")
   public ModelAndView gotoParentsFeatures()
   {
      return new ModelAndView(ConstPageNames.PARENTFEATURES);
   }

   // glossary
   @RequestMapping("/glossary.do")
   public ModelAndView gotoGlossary()
   {
      return new ModelAndView(ConstPageNames.GLOSSARY);
   }

   // membership
   @RequestMapping("/membership.do")
   public ModelAndView gotoMembership()
   {
      return new ModelAndView(ConstPageNames.MEMBERSHIP);
   }

   // whyFamilies
   @RequestMapping("/whyFamilies.do")
   public ModelAndView gotoWhyFamilies()
   {
      return new ModelAndView(ConstPageNames.WHYFAMILIES);
   }

   // backStory
   @RequestMapping("/backStory.do")
   public ModelAndView gotoBackStory()
   {
      return new ModelAndView(ConstPageNames.BACKSTORY);
   }

   // whyFunnyName
   @RequestMapping("/whyFunnyName.do")
   public ModelAndView gotoWhyFunnyName()
   {
      return new ModelAndView(ConstPageNames.WHYFUNNYNAME);
   }

   // meetTheTeam
   @RequestMapping("/meetTheTeam.do")
   public ModelAndView gotoMeetTheTeam()
   {
      return new ModelAndView(ConstPageNames.METTTHETEAM);
   }

   // gaurantees
   @RequestMapping("/gaurantees.do")
   public ModelAndView gotoGaurantees()
   {
      return new ModelAndView(ConstPageNames.GAURANTEES);
   }

   @RequestMapping("/news.do")
   public ModelAndView gotoNews()
   {
      return new ModelAndView(ConstPageNames.NEWS);
   }

   // aboutSave aboutSpend aboutEarn aboutShare
   @RequestMapping("/aboutSave.do")
   public ModelAndView gotoAboutSave()
   {
      return new ModelAndView(ConstPageNames.ABOUTSAVE);
   }

   @RequestMapping("/aboutSpend.do")
   public ModelAndView gotoAboutSpend()
   {
      return new ModelAndView(ConstPageNames.ABOUTSPEND);
   }

   @RequestMapping("/aboutShare.do")
   public ModelAndView gotoAboutShare()
   {
      return new ModelAndView(ConstPageNames.ABOUTSHARE);
   }

   @RequestMapping("/aboutEarn.do")
   public ModelAndView gotoAboutEarn()
   {
      return new ModelAndView(ConstPageNames.ABOUTEARN);
   }

   // februaryCauses marchCauses
   @RequestMapping("/february_2009_causes.do")
   public ModelAndView gotoFebruaryCauses()
   {
      return new ModelAndView(ConstPageNames.FEBRUARYCAUSES);
   }

   @RequestMapping("/march_2009_causes.do")
   public ModelAndView gotoMarchCauses()
   {
      return new ModelAndView(ConstPageNames.MARCHCAUSES);
   }

   @RequestMapping("/april_2009_causes.do")
   public ModelAndView gotoAprilCauses()
   {
      return new ModelAndView(ConstPageNames.APRILCAUSES);
   }

   @RequestMapping("/june_2009_causes.do")
   public ModelAndView gotoJuneCauses()
   {
      return new ModelAndView(ConstPageNames.JUNECAUSES);
   }
   
   @RequestMapping("/currentMonthCauses.do")
   public ModelAndView currentMonthCauses()
   {
      return new ModelAndView(ConstPageNames.CURRENT_MONTH_CAUSES);
   }   

   @RequestMapping("/soccerForGood.do")
   public ModelAndView soccerForGood()
   {
      return new ModelAndView(ConstPageNames.SOCCER_FOR_GOOD);
   }
   
   @RequestMapping("/reefRescue.do")
   public ModelAndView reefRescue()
   {
      return new ModelAndView(ConstPageNames.REEF_RESCUE);
   }   
   
   @RequestMapping("/whaleSongs.do")
   public ModelAndView whaleSongs()
   {
      return new ModelAndView(ConstPageNames.WHALE_SONGS);
   }   
   
   @RequestMapping("/redWolfPups.do")
   public ModelAndView redWolfPups()
   {
      return new ModelAndView(ConstPageNames.RED_WOLF_PUPS);
   }   
   
   @RequestMapping("/plumpyNut.do")
   public ModelAndView plumpyNut()
   {
      return new ModelAndView(ConstPageNames.PLUMPY_NUT);
   }  

   @RequestMapping("/treetopsForTitis.do")
   public ModelAndView treetopsForTitis()
   {
      return new ModelAndView(ConstPageNames.TREE_TOPS_FOR_TITIS);
   }  
   
   @RequestMapping("/shareTheMusic.do")
   public ModelAndView shareTheMusic()
   {
      return new ModelAndView(ConstPageNames.SHARE_THE_MUSIC);
   }  
   
   @RequestMapping("/safeStompingGrounds.do")
   public ModelAndView safeStompingGrounds()
   {
      return new ModelAndView(ConstPageNames.SAFE_STOMPING_GROUNDS);
   }  
   
   @RequestMapping("/preventMalaria.do")
   public ModelAndView preventMalaria()
   {
      return new ModelAndView(ConstPageNames.PREVENT_MALARIA);
   }  
   
   // terms
   @RequestMapping("/terms.do")
   public ModelAndView gotoTerms()
   {
      return new ModelAndView(ConstPageNames.TERMS);
   }

   // privacy
   @RequestMapping("/privacy.do")
   public ModelAndView gotoPrivacy()
   {
      return new ModelAndView(ConstPageNames.PRIVACY);
   }

   @RequestMapping("/forgot.do")
   public ModelAndView gotoForgot()
   {
      return new ModelAndView(ConstPageNames.FORGOT);
   }

   @RequestMapping("/forgotYourPassword.do")
   public ModelAndView gotoForgotYourPassword()
   {
      return new ModelAndView(ConstPageNames.FORGOTYOURPASSWORD);
   }

   @RequestMapping("/forgotYourNickname.do")
   public ModelAndView gotoForgotYourNickname()
   {
      return new ModelAndView(ConstPageNames.FORGOTYOURNICKNAME);
   }

   @RequestMapping("/scholastic.do")
   public ModelAndView gotoScholastic()
   {
      return new ModelAndView(ConstPageNames.SCHOLASTIC);
   }

   // for how it helps page
   @RequestMapping("/howItHelps.do")
   public ModelAndView gotoHowItHelps()
   {
      return new ModelAndView(ConstPageNames.HOWITHELPS);
   }

   @RequestMapping("/startsWithAllowance.do")
   public ModelAndView gotoStartsWithAllowance()
   {
      return new ModelAndView(ConstPageNames.STARTWITHALLOWANCE);
   }
   
   @RequestMapping("/treePlanting.do")
   public ModelAndView gotoTreePlanting()
   {
      return new ModelAndView(ConstPageNames.TREEPLANTING);
   }

   @RequestMapping("/reforestation.do")
   public ModelAndView gotoReforestation()
   {
      return new ModelAndView(ConstPageNames.REFORESTATION);
   }

   @RequestMapping("/landfillMethane.do")
   public ModelAndView gotolandfillMethane()
   {
      return new ModelAndView(ConstPageNames.LANDFILLMETHANE);
   }
   
   @RequestMapping("/windPower.do")
   public ModelAndView gotoWindPower()
   {
      return new ModelAndView(ConstPageNames.WINDPOWER);
   }
   
   @RequestMapping("/nameWhale.do")
   public ModelAndView gotonNameWhale()
   {
      return new ModelAndView(ConstPageNames.NAMEWHALE);
   }
   
   @RequestMapping("/greenerTruckStop.do")
   public ModelAndView gotoGreenerTruckStop()
   {
      return new ModelAndView(ConstPageNames.GREENERTRUCKSTOP);
   }
   
   @RequestMapping("/saveSeals.do")
   public ModelAndView gotosaveSeals()
   {
      return new ModelAndView(ConstPageNames.SAVESEALS);
   }
   
   @RequestMapping("/schoolBus.do")
   public ModelAndView gotoSchoolBus()
   {
      return new ModelAndView(ConstPageNames.SCHOOLBUS);
   }
   @RequestMapping("/fiftypAvatars.do")
   public ModelAndView gotoFiftypAvatars()
   {
      return new ModelAndView(ConstPageNames.FIFTYPAVATARS);
   }
   
   @RequestMapping("/newsCanada.do")
   public ModelAndView gotoNewsCanada()
   {
      return new ModelAndView(ConstPageNames.NEWSCANADA);
   }
   
   @RequestMapping("/newsStopGlobalWarming.do")
   public ModelAndView gotoNewsStopGlobalWarming()
   {
      return new ModelAndView(ConstPageNames.NEWSSTOPGLOBALWARMING);
   }
   
   @RequestMapping("/newsAms.do")
   public ModelAndView gotoNewsAms()
   {
      return new ModelAndView(ConstPageNames.NEWSAMS);
   }
   
   @RequestMapping("/newsHolidaycard.do")
   public ModelAndView gotoNewsHolidaycard()
   {
      return new ModelAndView(ConstPageNames.NEWSHOLIDAYCARD);
   }
   
   @RequestMapping("/newsFiftyplaunches.do")
   public ModelAndView gotoNewsFiftyplaunches()
   {
      return new ModelAndView(ConstPageNames.NEWSFIFTYPLAUNCHES);
   }
   
   @RequestMapping("/newsConnectYoungDonors.do")
   public ModelAndView gotoNewsConnectYoungDonors()
   {
      return new ModelAndView(ConstPageNames.NEWSCONNECTYOUGNDONORS);
   }
   
   @RequestMapping("/newsFinancialBasics.do")
   public ModelAndView gotoNewsFinancialBasics()
   {
      return new ModelAndView(ConstPageNames.NEWSFINANCIALBASICS);
   }
   
   @RequestMapping("/whyFamiliesMore.do")
   public ModelAndView gotoWhyFamiliesMore()
   {
      return new ModelAndView(ConstPageNames.WHYFAMILIESMORE);
   }
   
   @RequestMapping("/customerServicePage.do")
   public ModelAndView gotoCustomerServicePage()
   {
      return new ModelAndView(ConstPageNames.CUSTOMER_SERVICE_INDEX);
   }
   
   @RequestMapping("/login.do")
   public ModelAndView gotoLogInPage()
   {
      return new ModelAndView(ConstPageNames.LOGINPAGE);
   }
   
   @RequestMapping("/faq")
   public ModelAndView gotoRedeemMembership()
   {
      return new ModelAndView(ConstPageNames.FAQ);
   }
   
   @RequestMapping("/doINeedIt.do")
   public ModelAndView gotoDoINeedIt()
   {
      return new ModelAndView(ConstPageNames.DOINEEDIT);
   }
   //save investments
   @RequestMapping("/saveInvestments.do")
   public ModelAndView gotosaveInvestments()
   {
      return new ModelAndView(ConstPageNames.SAVE_INVESTMENTS);
   }   
   //spend cards
   @RequestMapping("/spendCards.do")
   public ModelAndView gotoSpendCards()
   {
      return new ModelAndView(ConstPageNames.SPEND_CARDS);
   }   
   //share causes
   @RequestMapping("/shareCauses.do")
   public ModelAndView gotoShareCauses()
   {
      return new ModelAndView(ConstPageNames.SHARE_CAUSES);
   }    
   
   @RequestMapping("/theBoard.do")
   public ModelAndView gotoTheBoard()
   {
      return new ModelAndView(ConstPageNames.BOARD);
   }
   
   @RequestMapping("/more.do")
   public ModelAndView gotoMore()
   {
      return new ModelAndView(ConstPageNames.MORE);
   }
   
 //why ThreeJars
   @RequestMapping("/whyThreeJars.do")
   public ModelAndView whyThreeJars()
   {
      return new ModelAndView(ConstPageNames.WHY_THREE_JARS);
   }   
 
   //our partners
   @RequestMapping("/ourPartners.do")
   public ModelAndView ourParnters()
   {
      return new ModelAndView(ConstPageNames.OUR_PARTNERS);
   }
   
   //August causes
   //animal resuces
   @RequestMapping("/animalResuces.do")
   public ModelAndView animalResuces()
   {
      return new ModelAndView(ConstPageNames.ANIMAL_RESCUE);
   }
   
   //bike ambulance
   @RequestMapping("/bikeAmbulance.do")
   public ModelAndView bikeAmbulance()
   {
      return new ModelAndView(ConstPageNames.BIKE_AMBULANCE);
   }
   
   //fire design
   @RequestMapping("/fireDesign.do")
   public ModelAndView fireDesign()
   {
      return new ModelAndView(ConstPageNames.FIRE_DESIGN);
   }
   
   //turtles
   @RequestMapping("/turtles.do")
   public ModelAndView turtles()
   {
      return new ModelAndView(ConstPageNames.TOUR_DE_TURTLES);
   }   
   
   @RequestMapping("/fiftyp.do")
   public ModelAndView homePage(HttpServletRequest request, HttpServletResponse response, @RequestParam
   String pageName) throws IOException
   {
      if(pageName != null && pageName.trim().length() > 0)
      {
         if(pageName.equals(ConstPageNames.INDEX))
         {
            UserView userView = getLoggedInUserView(request);
            if(userView != null)
            {
               String mainDomain = null;
               if(userView instanceof ChildView)
               {
                  mainDomain = FiftyPBaseApp.MAIN_DOMAIN;
               }
               else
               {
                  mainDomain = FiftyPBaseApp.SECURE_DOMAIN;
               }
               response.sendRedirect(mainDomain + "login/login.do");
               return null;
            }
         }
         else
         {

            if(pageName.equals(ConstPageNames.FAQ))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "faq");
            }
            else if(pageName.equals(ConstPageNames.LOGINPAGE))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "login.do");
            }
            else if(pageName.equals(ConstPageNames.WHYFAMILIESMORE))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "whyFamiliesMore.do");
            }
            else if(pageName.equals(ConstPageNames.NEWSFINANCIALBASICS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "newsFinancialBasics.do");
            }
            else if(pageName.equals(ConstPageNames.NEWSFIFTYPLAUNCHES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "newsFiftyplaunches.do");
            }
            else if(pageName.equals(ConstPageNames.NEWSHOLIDAYCARD))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "newsHolidaycard.do");
            }
            else if(pageName.equals(ConstPageNames.NEWSAMS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "newsAms.do");
            }
            else if(pageName.equals(ConstPageNames.NEWSSTOPGLOBALWARMING))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "newsStopGlobalWarming.do");
            }
            else if(pageName.equals(ConstPageNames.NEWSCANADA))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "newsCanada.do");
            }
            else if(pageName.equals(ConstPageNames.FIFTYPAVATARS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "fiftypAvatars.do");
            }
            else if(pageName.equals(ConstPageNames.SCHOOLBUS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "schoolBus.do");
            }
            else if(pageName.equals(ConstPageNames.SAVESEALS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "saveSeals.do");
            }
            else if(pageName.equals(ConstPageNames.GREENERTRUCKSTOP))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "greenerTruckStop.do");
            }
            else if(pageName.equals(ConstPageNames.NAMEWHALE))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "nameWhale.do");
            }
            else if(pageName.equals(ConstPageNames.WINDPOWER))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "windPower.do");
            }
            else if(pageName.equals(ConstPageNames.LANDFILLMETHANE))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "landfillMethane.do");
            }
            else if(pageName.equals(ConstPageNames.REFORESTATION))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "reforestation.do");
            }
            else if(pageName.equals(ConstPageNames.TREEPLANTING))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "treePlanting.do");
            }
            else if(pageName.equals(ConstPageNames.HOWITHELPS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "doINeedIt.do");
            }
            else if(pageName.equals(ConstPageNames.SCHOLASTIC))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "scholastic.do");
            }
            else if(pageName.equals(ConstPageNames.FORGOTYOURNICKNAME))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "forgotYourNickname.do");
            }
            else if(pageName.equals(ConstPageNames.FORGOTYOURPASSWORD))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "forgotYourPassword.do");
            }
            else if(pageName.equals(ConstPageNames.FORGOT))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "forgot.do");
            }
            else if(pageName.equals(ConstPageNames.PRIVACY))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "privacy.do");
            }
            else if(pageName.equals(ConstPageNames.TERMS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "terms.do");
            }
            else if(pageName.equals(ConstPageNames.MARCHCAUSES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "march_2009_causes.do");
            }
            else if(pageName.equals(ConstPageNames.FEBRUARYCAUSES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "february_2009_causes.do");
            }
            else if(pageName.equals(ConstPageNames.ABOUTEARN))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "aboutEarn.do");
            }
            else if(pageName.equals(ConstPageNames.ABOUTSHARE))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "aboutShare.do");
            }
            else if(pageName.equals(ConstPageNames.ABOUTSPEND))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "aboutSpend.do");
            }
            else if(pageName.equals(ConstPageNames.ABOUTSAVE))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "aboutSave.do");
            }
            else if(pageName.equals(ConstPageNames.NEWS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "news.do");
            }
            else if(pageName.equals(ConstPageNames.GAURANTEES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "gaurantees.do");
            }
            else if(pageName.equals(ConstPageNames.METTTHETEAM))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "meetTheTeam.do");
            }
            else if(pageName.equals(ConstPageNames.WHYFUNNYNAME))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "whyFunnyName.do");
            }
            else if(pageName.equals(ConstPageNames.BACKSTORY))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "backStory.do");
            }
            else if(pageName.equals(ConstPageNames.WHYFAMILIES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "whyFamilies.do");
            }
            else if(pageName.equals(ConstPageNames.MEMBERSHIP))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "membership.do");
            }
            else if(pageName.equals(ConstPageNames.GLOSSARY))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "glossary.do");
            }
            else if(pageName.equals(ConstPageNames.PARENTFEATURES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "parentsFeatures.do");
            }
            else if(pageName.equals(ConstPageNames.KIDFEATURES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "kidsFeatures.do");
            }
            else if(pageName.equals(ConstPageNames.PREVIEW))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "preview.do");
            }
            else if(pageName.equals(ConstPageNames.FIFTYPGIVES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "fiftypGives.do");
            }
            else if(pageName.equals(ConstPageNames.PARENTCHOOSE))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "parentsChoose.do");
            }
            else if(pageName.equals(ConstPageNames.KIDEARN))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "kidsEarn.do");
            }
            else if(pageName.equals(ConstPageNames.HOWITWORKS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "howItWorks.do");
            }
            else if(pageName.equals(ConstPageNames.BETTERWAY))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "betterWay.do");
            }
            else if(pageName.equals(ConstPageNames.DOINEEDIT))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "doINeedIt.do");
            }
            else if(pageName.equals(ConstPageNames.SAVE_INVESTMENTS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "saveInvestments.do");
            }            
            else if(pageName.equals(ConstPageNames.SPEND_CARDS))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "spendCards.do");
            }
            else if(pageName.equals(ConstPageNames.SHARE_CAUSES))
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "shareCauses.do");
            }               
         }
      }
      else
      {
         response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "home.do");
      }

      return new ModelAndView(pageName);

   }
   
   @RequestMapping("/support")
   public ModelAndView gotoContactUs()
   {
      return new ModelAndView(ConstPageNames.CONTACT_US);
   }

   @RequestMapping("/genErr.do")
   public ModelAndView generalErrorPage(HttpServletRequest request)
   {
      Map<String, String> model = new HashMap<String, String>();
      Integer errCode = Integer.valueOf(request.getParameter("errCode"));
      switch(errCode)
      {
         case 1:
            model.put("message", "Not enough privileges");
         break;
         case 2:
            model.put("message", Constants.SESSION_EXPIRED_MSG);
         break;
      }
      return new ModelAndView("general_error_page", model);
   }
}