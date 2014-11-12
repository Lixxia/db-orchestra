// // code obtained from http://stackoverflow.com/questions/14706300/how-to-schedule-task-daily-onstart-in-play-2-0-4


// import scala.concurrent.duration.Duration;
// import org.joda.time.DateTime;
// import org.joda.time.Seconds;
// import play.Application;
// import play.GlobalSettings;
// import play.Logger;
// import play.libs.Akka;
// import java.util.concurrent.TimeUnit;

// import play.libs.ws.*;
// import play.libs.F.Function;
// import play.libs.F.Promise;

// public class Global extends GlobalSettings {

//     @Override
//     public void onStart(Application application) {


//         Akka.system().scheduler().scheduleOnce(
//                 Duration.create(0, TimeUnit.MILLISECONDS),
//                 new Runnable() {
//                     @Override
//                     public void run() {
//                         Logger.info("ON START do a thing   " + System.currentTimeMillis());
                        
//                         // String url = "https://na.api.pvp.net/api/lol/static-data/na/v1.2/champion?dataById=true&champData=all&api_key=48976092-a600-405b-8ae0-f890d09f3aa9";
//                         // Promise<JsonNode> jsonPromise = WS.url(url).get().map(
//                         //     new Function<WSResponse, JsonNode>() {
//                         //         public JsonNode apply(WSResponse response) {
//                         //             JsonNode json = response.asJson();
//                         //             return json;
//                         //         }
//                         //     }
//                         // );                        
//                     }
//                 }
//         );

//         Akka.system().scheduler().schedule(
//                 Duration.create(nextExecutionInSeconds(8, 0), TimeUnit.SECONDS),
//                 Duration.create(24, TimeUnit.HOURS),
//                 new Runnable() {
//                     @Override
//                     public void run() {
//                         Logger.info("EVERY DAY AT 8:00 ---    " + System.currentTimeMillis());
//                     }
//                 }
//         );
//     }

//     public static int nextExecutionInSeconds(int hour, int minute){
//         return Seconds.secondsBetween(
//                 new DateTime(),
//                 nextExecution(hour, minute)
//         ).getSeconds();
//     }

//     public static DateTime nextExecution(int hour, int minute){
//         DateTime next = new DateTime()
//                 .withHourOfDay(hour)
//                 .withMinuteOfHour(minute)
//                 .withSecondOfMinute(0)
//                 .withMillisOfSecond(0);

//         return (next.isBeforeNow())
//                 ? next.plusHours(24)
//                 : next;
//     }
// }