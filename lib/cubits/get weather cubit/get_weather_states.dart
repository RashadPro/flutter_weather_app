
class WeatherState {}

// الكيوبيت بيكلم اليو اي عن طريق الاستيتس دي
class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {}

class WeatherFailureState extends WeatherState {}



/*
دلوقتي لم بجي اعمل كيوبيت معين وعندي اكتر من وضع او اكتر من استيت

صعب الكيوبيت ده يتعامل مع كل الاستيت في نفس الوقت 

ف انا هروح للاستيتس بتعتي وانشئ كلاس اسمو ويزر استيت مثلا

والاستيتس بتعتي ترث من الكلاس ده وابقى هنا حققت مبدأ البلومير فيزم تعدد الاشكال

واخلي الكيوبيت بتاعي يرث من الويزر استيت اللي هو البيز كلاس

*/