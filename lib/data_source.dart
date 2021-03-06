import 'package:flutter/material.dart';

Color primaryBlack = Color(0xFF455A64);

class DataSource{
  static String quote = "لا تخشى أي شيء في هذه الحياة ، بل يجب عليك فهمها فقط. حان الوقت الآن لفهم المزيد ، حتى نتخطا تلك المرحله.";

  static List questionAnswers = [
    {
      "question": "ما هو فيروس كورونا؟",
      "answer":
      "فيروسات كورونا هي فصيلة كبيرة من الفيروسات التي قد تسبب المرض للحيوان أو الإنسان. لدى البشر ، من المعروف أن العديد من فيروسات كورونا تسبب التهابات في الجهاز التنفسي تتراوح من نزلات البرد إلى أمراض أكثر شدة مثل متلازمة الشرق الأوسط التنفسية (ميرس) ومتلازمة الجهاز التنفسي الحاد (سارس). أحدث فيروس كورونا تم اكتشافه يسبب مرض فيروس كورونا "
    },
    {
      "question": "ما هو كوفيد -19؟",
      "answer":
      "COVID-19 هو مرض معد يسببه أحدث فيروس كورونا المكتشف. هذا الفيروس والمرض الجديد كانا مجهولين قبل بدء تفشي المرض في ووهان ، الصين ، في ديسمبر 2019."    },
    {
      "question": "ما هي أعراض مرض كوفيد -19؟",
      "answer":
    "الأعراض الأكثر شيوعًا لـ COVID-19 هي الحمى والتعب والسعال الجاف. قد يعاني بعض المرضى من آلام وآلام واحتقان الأنف وسيلان الأنف والتهاب الحلق أو الإسهال. وعادة ما تكون هذه الأعراض خفيفة وتبدأ تدريجياً. يصاب بعض الأشخاص بالعدوى لكن لا تظهر عليهم أي أعراض ولا تشعر بتوعك معظم الناس (حوالي 80٪) يتعافون من المرض دون الحاجة إلى علاج خاص. يصاب حوالي 1 من كل 6 أشخاص مصابين بـ COVID-19 بمرض خطير ويصاب بصعوبة في التنفس. كبار السن ، وأولئك الذين يعانون من مشاكل طبية أساسية مثل ارتفاع ضغط الدم أو مشاكل القلب أو مرض السكري ، هم أكثر عرضة للإصابة بأمراض خطيرة. يجب على الأشخاص الذين يعانون من الحمى والسعال وصعوبة التنفس التماس العناية الطبية "    },
    {
      "question": "كيف ينتشر مرض كوفيد -19؟",
      "answer":
      "يمكن للأشخاص التقاط COVID-19 من الآخرين المصابين بالفيروس. يمكن أن ينتشر المرض من شخص لآخر من خلال قطرات صغيرة من الأنف أو الفم والتي تنتشر عندما يسعل أو يزفر شخص مصاب بـ COVID-19. تسقط هذه القطرات على الأشياء و الأسطح حول الشخص. ثم يصاب الأشخاص الآخرون بـ COVID-19 عن طريق لمس هذه الأشياء أو الأسطح ، ثم لمس عيونهم أو أنفهم أو فمهم. يمكن للأشخاص أيضًا التقاط COVID-19 إذا استنشقوا قطرات من شخص مصاب بـ COVID-19 يسعل أو قطرات الزفير. لهذا السبب من المهم الابتعاد أكثر من متر واحد (3 أقدام) عن شخص مريض. \n  تقوم منظمة الصحة العالمية بتقييم البحث الجاري حول طرق انتشار COVID-19 وستواصل مشاركة النتائج المحدثة. "    },
    {
      "question":
      "هل يمكن للفيروس المسبب لـ COVID-19 أن ينتقل عبر الهواء؟",
      "answer":
      "تشير الدراسات حتى الآن إلى أن الفيروس المسبب لـ COVID-19 ينتقل بشكل أساسي من خلال ملامسة الرذاذ التنفسي وليس عبر الهواء"    },
    {
      "question": "هل يمكن التقاط كوفيد -19 من شخص لا تظهر عليه أعراض؟",
      "answer":
      "الطريقة الرئيسية لانتشار المرض هي من خلال الرذاذ التنفسي الذي يطرده شخص يسعل. خطر الإصابة بـ COVID-19 من شخص ليس لديه أعراض على الإطلاق منخفض للغاية. ومع ذلك ، فإن العديد من الأشخاص المصابين بـ COVID-19 يعانون فقط من أعراض خفيفة. صحيح بشكل خاص في المراحل المبكرة من المرض. لذلك من الممكن التقاط COVID-19 من شخص ، على سبيل المثال ، مجرد سعال خفيف ولا يشعر بالمرض. تقوم منظمة الصحة العالمية بتقييم الأبحاث الجارية حول فترة انتقال COVID -19 وسيواصل تبادل النتائج المحدثة "    },
    {
      "question":
      "هل يمكنني التقاط COVID-19 من براز شخص مصاب بالمرض؟",
      "answer":
      "يبدو أن خطر الإصابة بـ COVID-19 من براز شخص مصاب منخفض. وبينما تشير التحقيقات الأولية إلى أن الفيروس قد يكون موجودًا في البراز في بعض الحالات ، فإن الانتشار عبر هذا الطريق ليس سمة رئيسية لتفشي المرض. منظمة الصحة العالمية هي تقييم الأبحاث الجارية حول طرق انتشار COVID-19 وسيستمر في مشاركة النتائج الجديدة. ولأن هذا يمثل خطرًا ، فهو سبب آخر لتنظيف اليدين بانتظام ، بعد استخدام الحمام وقبل تناول الطعام "    },
    {
      "question": "ما مدى احتمالية إصابتي بـ COVID-19؟",
      "answer":
      "تعتمد المخاطر على مكانك - وبشكل أكثر تحديدًا ، ما إذا كان هناك تفشي لـ COVID-19 يتكشف هناك. \n بالنسبة لمعظم الأشخاص في معظم المواقع ، لا يزال خطر الإصابة بـ COVID-19 منخفضًا. ومع ذلك ، هناك الآن أماكن حول العالم (المدن أو المناطق) حيث ينتشر المرض. بالنسبة للأشخاص الذين يعيشون في هذه المناطق أو يزورونها ، فإن خطر الإصابة بـ COVID-19 أعلى. تتخذ الحكومات والسلطات الصحية إجراءات صارمة في كل مرة تظهر فيها حالة جديدة من COVID-19 تم تحديده. تأكد من الامتثال لأي قيود محلية على السفر أو التنقل أو التجمعات الكبيرة. سيؤدي التعاون مع جهود مكافحة الأمراض إلى تقليل خطر الإصابة بفيروس COVID-19 أو انتشاره. \n يمكن احتواء تفشي COVID-19 وإيقاف انتقاله ، كما تم يظهر في الصين وبعض البلدان الأخرى. لسوء الحظ ، يمكن أن تظهر حالات تفشي جديدة بسرعة. من المهم أن تكون على دراية بالموقف الذي تتواجد فيه أو تنوي الذهاب إليه. تنشر منظمة الصحة العالمية تحديثات يومية حول حالة COVID-19 في جميع أنحاء العالم. "    },
    {
      "question": "من هو المعرض لخطر الإصابة بمرض شديد؟",
      "answer":
      "بينما لا نزال نتعرف على كيفية تأثير COVID-2019 على الأشخاص ، يبدو أن كبار السن والأشخاص الذين يعانون من حالات طبية موجودة مسبقًا (مثل ارتفاع ضغط الدم أو أمراض القلب أو أمراض الرئة أو السرطان أو مرض السكري) يصابون بأمراض خطيرة أكثر من غيرهم .\n عفانا الله واياكم "    },
    {
      "question": "هل يجب أن أرتدي الكمامة لحماية نفسي؟",
      "answer":
      "ارتدِ الكمامة فقط إذا كنت مريضًا بأعراض COVID-19 (خاصة السعال) أو تعتني بشخص قد يكون مصابًا بـ COVID-19. لا يمكن استخدام قناع الوجه القابل للتصرف إلا مرة واحدة. إذا لم تكن مريضًا أو تعتني بشخص مريض إذن أنت تهدر قناعًا. هناك نقص في جميع أنحاء العالم في الأقنعة ، لذلك تحث منظمة الصحة العالمية الأشخاص على استخدام الأقنعة بحكمة. \ n تنصح منظمة الصحة العالمية بالاستخدام الرشيد للأقنعة الطبية لتجنب الهدر غير الضروري للموارد الثمينة وسوء استخدام الأقنعة \ n أكثر تتمثل الطرق الفعالة لحماية نفسك والآخرين من COVID-19 في تنظيف يديك بشكل متكرر وتغطية السعال بثني الكوع أو بمنديل ورقي والحفاظ على مسافة لا تقل عن متر واحد (3 أقدام) عن الأشخاص الذين يسعلون أو يعطسون "    },
    {
      "question":
      "هل المضادات الحيوية فعالة في منع أو علاج COVID-19؟",
      "answer":
      "لا. لا تعمل المضادات الحيوية ضد الفيروسات ، فهي تعمل فقط على الالتهابات البكتيرية. COVID-19 يسببه فيروس ، لذا لا تعمل المضادات الحيوية. لا ينبغي استخدام المضادات الحيوية كوسيلة للوقاية أو العلاج من COVID-19. فهي يجب استخدامه فقط حسب توجيهات الطبيب لعلاج عدوى بكتيرية "    }
  ];
}