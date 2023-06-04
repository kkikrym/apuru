'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "be201b56b657757d23fb7937b41bc4ad",
"index.html": "71355a9f6961b49d2fee85ecb49469f8",
"/": "71355a9f6961b49d2fee85ecb49469f8",
"main.dart.js": "2c5ca8e2bfe08c57a5c13482d93f2966",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"static/defaults/hd/balconyparrot.gif": "c1fd8717a9f4180d605ce2e1c21d250a",
"static/defaults/hd/jumpingparrot.gif": "56ce47864654acd8af7dcffcd749470c",
"static/defaults/hd/vaccineparrot.gif": "974554acaa1d2eb61fa41a9134914688",
"static/defaults/hd/rythmicalparrot.gif": "ed3c2421fd5c7b543e7c22974094172b",
"static/defaults/hd/bluntparrot.gif": "8ce24774dedd43b5f38db94912ee84dc",
"static/defaults/hd/flyingmoneyparrot.gif": "e5ff1110d131321c326fd41ce8b3a0c1",
"static/defaults/hd/biparrot.gif": "65555ff52fcedb434d18042623d43e7a",
"static/defaults/hd/portalorangeparrot.gif": "2163577ba1652a13460ed21a92ce6a5d",
"static/defaults/hd/hypnoparrotdark.gif": "6794b7a5f6f6705e1fd3b25238bff99d",
"static/defaults/hd/gothparrot.gif": "12c6b634ac48c1958351b3ff1bef7fa8",
"static/defaults/hd/vikingparrot.gif": "5fbf76672f848723b22242f4958cacd6",
"static/defaults/hd/docparrot.gif": "a2e270bf9cfa23694e23b2695f082bbf",
"static/defaults/hd/boredparrot.gif": "ea81c2f961d0e22ab6348ced5c9b8528",
"static/defaults/hd/picassoparrot.gif": "cdbdb6907aa832eda641439490b73f7f",
"static/defaults/hd/jumpingparrotjr.gif": "2bed53887e976728cb8f78a8c907a2cc",
"static/defaults/hd/staytfhomeparrot.gif": "aafd162f283efb0bd4b39f7b4e317823",
"static/defaults/hd/pumpkinparrot.gif": "ae4d7fdd1dbda2bc92c0a94509ea25b9",
"static/defaults/hd/quadparrot.gif": "11120557ae24e4755189422144cd11ed",
"static/defaults/hd/kindasusparrot.gif": "c83a72afce3aa30563f003e9f7fd27b0",
"static/defaults/hd/shuffleparrot.gif": "e67b2f4bde547aa737e934796ed5d23f",
"static/defaults/hd/angryparrot.gif": "d5d982c2bd9bcb04d721a25a23ae31a9",
"static/defaults/hd/playcatchleftparrot.gif": "77cd5ff98e90f5a6bec83692c6873543",
"static/defaults/hd/sithparrot.gif": "8d64b09e0f3d3826795e2cdc8789db4b",
"static/defaults/hd/frenchparrot.gif": "6ac8326ea44e95300e1b32a80132e863",
"static/defaults/hd/fastparrot.gif": "aa8c588a67bc3b88f46e65c0b2ea414d",
"static/defaults/hd/bootlegparrot.gif": "7e8d0a72e7780a02c53f6a396bc170b0",
"static/defaults/hd/pokeparrot.gif": "db2558d3a56583acd96af21ba96ac874",
"static/defaults/hd/aussieparrot.gif": "f7c4334de89b1254adcb78556a9c4c0e",
"static/defaults/hd/levitationparrot.gif": "63346ef493959f47d77630b53405dc97",
"static/defaults/hd/harpoparrot.gif": "29fa63f56d5ed512921cb18ef81e10d3",
"static/defaults/hd/imposterparrot.gif": "01f405988511d79c9b67fd1565440706",
"static/defaults/hd/croissantparrot.gif": "6aac72603f0b6e2b7523220afa1f5163",
"static/defaults/hd/congaparrot.gif": "617f7f748ac11e4bca29e7aa68204fe6",
"static/defaults/hd/sadparrot.gif": "9346a1793916e42da4ec87622cfc7046",
"static/defaults/hd/partyparrot.gif": "5dcb5df69dadaf0025f7f50ef9c6e225",
"static/defaults/hd/daftpunkparrot.gif": "dfd7efe3af5b83e481095c3568eeb18d",
"static/defaults/hd/boomparrot.gif": "f7da263159edd2aaa932b478a104bc5c",
"static/defaults/hd/redenvelopeparrot.gif": "d9ae832526f0dc19456a86ea575364ba",
"static/defaults/hd/astronautparrot.gif": "f11f8250134efc2bdd510a716bf450e6",
"static/defaults/hd/originalparrot.gif": "dae2eb3b5d087a136e6db867ee27d150",
"static/defaults/hd/scienceparrot.gif": "5a8da7ab8e50e902d0ac8b5c6a7fb3a9",
"static/defaults/hd/horizontalparrot.gif": "7d3859effdea30b4f47a492647681399",
"static/defaults/hd/vueparrot.gif": "fe75feb0b1aea8b5210265981318d5c6",
"static/defaults/hd/innersourceparrot.gif": "c7ccc028eb133f6cf3410ad1aae5fd35",
"static/defaults/hd/opensourceparrot.gif": "e43558c10cc493d1da0520f0a581048a",
"static/defaults/hd/maskparrot.gif": "6c35717ede4fcf76cfdd66c7c50c1514",
"static/defaults/hd/sintparrot.gif": "bdc9703836fedbe39401a3c00649e8bd",
"static/defaults/hd/ceilingparrot.gif": "45f94df9e3ab83a97a794737e807895a",
"static/defaults/hd/headbangingparrot.gif": "1f025f8990e4783870475a21eb717a45",
"static/defaults/hd/middleparrot.gif": "ea1ac0b913f685506608194a58496317",
"static/defaults/hd/nodeparrot.gif": "20a57f1501949c5c485a14f0a0b59290",
"static/defaults/hd/hanamiparrot.gif": "937d5b7b5b6bdda098766d493b8c6cfb",
"static/defaults/hd/stayhomeparrotwindow.gif": "5b5ffd2747aafe1fc6dfb833f863d972",
"static/defaults/hd/raceconditionparrot.gif": "fa23e359c4b7b87e05bc95e08aba64fe",
"static/defaults/hd/gentlemanparrot.gif": "d15b4dbc019e1c9745ca232b30acca37",
"static/defaults/hd/sherlockholmesparrot.gif": "1c434abdc6627b324b54727294645b1b",
"static/defaults/hd/sushiparrot.gif": "8fec439a77b37edbcf9f9d7a1062ea77",
"static/defaults/hd/tiedyeparrot.gif": "ccef0ce6cb075e838ada991ce04c8943",
"static/defaults/hd/sleepingparrot.gif": "c38e67ea1a973468a609b39220d531da",
"static/defaults/hd/dealwithitparrot.gif": "54f08e76fa7639c7e0e94775d2e8b809",
"static/defaults/hd/redbullparrot.gif": "5d3c1dc98f83ce35b2cdbe176d031e04",
"static/defaults/hd/reverseportalblueparrot.gif": "dc48a86c90c51eeb540d46a90669d91c",
"static/defaults/hd/headsetparrot.gif": "964e0bf47935e6fdcbdf7ad77643e400",
"static/defaults/hd/mergeimmediatelyparrot.gif": "6a161b3a12bf78a1d51bea5e00b413a2",
"static/defaults/hd/laptop_parrot.gif": "5a20070624653b5cf5cd6a04a9d8052e",
"static/defaults/hd/exceptionallyfastparrot.gif": "44dab743b311d962c0e2c45a8a214bb9",
"static/defaults/hd/mergetrainparrot.gif": "a201158b4e8ad263c606a4f09c0050c2",
"static/defaults/hd/brazilianfanparrot.gif": "4b1c1af6a624b5d5731a67f857563916",
"static/defaults/hd/beerparrot.gif": "f94c910764fb1c49b5b550cbf6350a42",
"static/defaults/hd/wendyparrot.gif": "f85b5741912e51affdef850e31188119",
"static/defaults/hd/wineparrot.gif": "3bff0dd590425e1e6d3f0433a1ed6af3",
"static/defaults/hd/backwardsparrot.gif": "3c6d694a7c6b7f6c0ca006d808f17615",
"static/defaults/hd/aussiereversecongaparrot.gif": "12d53f225f39c256cb4d5b19c88a0056",
"static/defaults/hd/yosemitesamparrot.gif": "c03f5b5c69131100df9175b0fb36f32b",
"static/defaults/hd/slowparrot.gif": "cc0e82fbc300c6834199904dde1bdef7",
"static/defaults/hd/bobaparrot.gif": "0f7a2d3d36b5e238b266314d4b93d828",
"static/defaults/hd/confusedparrot.gif": "d83bf19eb1d7009787b0682788ac227f",
"static/defaults/hd/footballparrot.gif": "4dde28bd3d68deeb8cab42c95f714b22",
"static/defaults/hd/congapartyparrot.gif": "f57bd1fe1c38a2b164399e10bc30112b",
"static/defaults/hd/coffeeparrot.gif": "44e87cb6b175904c9131fa1a09d812d6",
"static/defaults/hd/accessibleparrot.gif": "9a6dd0566aa5581ce4ef73b8b3cd5789",
"static/defaults/hd/portalblueparrot.gif": "29f3230d594b640d72c7905903565afd",
"static/defaults/hd/braveheartparrot.gif": "ec6f4666dc49407a1f1ea6e2410c8027",
"static/defaults/hd/maracasparrot.gif": "6f9c6af661200b89db5381a37d79bcbd",
"static/defaults/hd/moonparrot.gif": "04f40ac214a795a1c572c7c191e51dfe",
"static/defaults/hd/norwegianblueparrot.gif": "c667a2cf8f28dff546440f41326e223f",
"static/defaults/hd/tinfoilhatparrot.gif": "a870aa2a8512c4af686abe0fbce0795f",
"static/defaults/hd/christmasparrot.gif": "adc73c88792dae92ce7dc9aaa7b57830",
"static/defaults/hd/covid19parrot.gif": "21ab69296791fb8ed73e90cb8bcd6bf7",
"static/defaults/hd/tpparrot.gif": "b3a9ad88a7c3d15d3adea9220d64e9f5",
"static/defaults/hd/popcornparrot.gif": "c36f84f0fd7d129c4ac2481cc3d2fd97",
"static/defaults/hd/parrot.gif": "e4d958b3f1ed0fcc83aace470b5c57e1",
"static/defaults/hd/wfhparrot.gif": "0d91d3c4efb33c76fa686d25b324f937",
"static/defaults/hd/illuminatiparrot.gif": "71a35fe691dae55d39d88daded350a4c",
"static/defaults/hd/reverseportalorangeparrot.gif": "063d08573b964ddc378cb375b2ca06de",
"static/defaults/hd/beretparrot.gif": "f77dd6558abeef53653f1134151c868c",
"static/defaults/hd/meldparrot.gif": "7edb85ee0376e5ca47c6d7c51f3255bc",
"static/defaults/hd/cakeparrot.gif": "637f2727055679ced8c8b5a9db173f89",
"static/defaults/hd/dadparrot.gif": "a73c7d0e6bb892049ced9f4aa04739df",
"static/defaults/hd/headingparrot.gif": "4fe488df638e3c091840c9c807180f04",
"static/defaults/hd/zoukparrot.gif": "d51e68070b9ef1a3dcea6738965ad2d7",
"static/defaults/hd/spyparrot.gif": "58bbd5624dbb2e4ce4a5c20617014c6e",
"static/defaults/hd/sneezyparrot.gif": "23be35cc16ea85f9381e8e8565e8f533",
"static/defaults/hd/birthdaypartyparrot.gif": "df8059e4f5f4336b55e1b20d323e4cc1",
"static/defaults/hd/stayhomeparrotcloser.gif": "7d2b40e74e8cdb25561cf1e29981ef52",
"static/defaults/hd/everythingsfineparrot.gif": "adc80ab4cf05704d442f8cadc688a3fb",
"static/defaults/hd/reactparrot.gif": "363052b0dbb755b440e7c224d9c5d49f",
"static/defaults/hd/revolutionparrot.gif": "eedb4382a282c2f3c766bf175f1fb25d",
"static/defaults/hd/dailyparrot.gif": "fe77f86dd3a174d7be9c8f088ce80efd",
"static/defaults/hd/ultrafastparrot.gif": "f89df3bc5a3e68cf6f8a5bd5789c0e9d",
"static/defaults/hd/soccerparrot.gif": "99888ff1aed984c01ce2632b4a1fa8a7",
"static/defaults/hd/dealwithitnowparrot.gif": "b200f4c7327739be32f9f18c313ad251",
"static/defaults/hd/mergeconflictparrot.gif": "1420f55fd6c037478609a345ee5a32b3",
"static/defaults/hd/mateparrot.gif": "d18c17f491002bdc91238417bcf75996",
"static/defaults/hd/chicoparrot.gif": "f0e806c24342332fd722eef6c9dd0a8b",
"static/defaults/hd/calvinist_parrot.gif": "304bcdceaaed118ce187b57d1b1f0f40",
"static/defaults/hd/aussiecongaparrot.gif": "ef5ec949c7cc547608c9fb1a7a0b03ff",
"static/defaults/hd/angelparrot.gif": "36562e5fac5727f1aae8bac5ad54a141",
"static/defaults/hd/glimpseparrot.gif": "bd7f4eaa1361fa76f581fd271829e06f",
"static/defaults/hd/reverseparrot.gif": "db57bf970375d87479945b009041874c",
"static/defaults/hd/zombieparrot.gif": "d830970a259b3f5439b0ba081fa27b6f",
"static/defaults/hd/chefparrot.gif": "fdcea11aa0e6946b427fbba43e6ab675",
"static/defaults/hd/hmmparrot.gif": "c1bba9c74cace75418ae5ed7a308cc26",
"static/defaults/hd/pingpongparrot.gif": "824109975f49306dcba72bf63897b9a4",
"static/defaults/hd/invisibleparrot.gif": "6501ed8ab5a6b94373d2697e83ae882d",
"static/defaults/hd/stableparrot.gif": "c5aec1a239697bdfd1b94022c27c2640",
"static/defaults/hd/bunnyparrot.gif": "64d51e856273e9db057320e8c1605074",
"static/defaults/hd/transparront.gif": "792ad1f36de230d33d8c7e8d42420d10",
"static/defaults/hd/donutparrot.gif": "d18ecf601f69800578678ad24847e1cc",
"static/defaults/hd/marshmallowparrot.gif": "f8240bde252c157ef61d9efa0f217001",
"static/defaults/hd/thankyouparrot.gif": "431e77aebb5afbfe4d83864b6b499255",
"static/defaults/hd/shortparrot.gif": "b1d0acf7f037650feb5ea5274b064f4c",
"static/defaults/hd/inverseparrot.gif": "2d3ec468e5c5ebd726e565133f94672f",
"static/defaults/hd/reversecongaparrot.gif": "303d9475d97fdb92922ff58357748036",
"static/defaults/hd/jediparrot.gif": "78a9d16149eadafb1fe7e4df3afce7b3",
"static/defaults/hd/discoparrot.gif": "f671ec5813b13a71b65cfa306f0e2b38",
"static/defaults/hd/michaeljacksonparrot.gif": "ba6e88c88d8fef500de611351b8c31ae",
"static/defaults/hd/redhatparrot.gif": "3209065220f199bbafb13da3cb811755",
"static/defaults/hd/pirateparrot.gif": "59c3edcbfe82395f6156f725473d42bb",
"static/defaults/hd/stayhomeparrot.gif": "03f0f8264aa906f8bce5c69984def43f",
"static/defaults/hd/grouchoparrot.gif": "7be25daaa602c5939f11c9f9df79758e",
"static/defaults/hd/mustacheparrot.gif": "bad779e0cfa3d66540657e2a549667e0",
"static/defaults/hd/bikerparrot.gif": "6d7c1d760389954e7b04230db877bb1a",
"static/defaults/hd/hypnoparrotlight.gif": "505d2021e070b6749bb4914b64e3b8ed",
"static/defaults/hd/darkmodeparrot.gif": "06e03b60a07af1f3f94270434ce64c20",
"static/defaults/hd/copparrot.gif": "ba5963bdd2fd1ff8bcad4cf0c666f786",
"static/defaults/hd/rubyparrot.gif": "f7386593c06b8c725739420cef70db8b",
"static/defaults/hd/blurryparrot.gif": "9e1a1e14d54c54744490df090e82b904",
"static/defaults/hd/whitewalkerparrot.gif": "48e3eacbaeda573d7a204ce3fba2dcfc",
"static/defaults/hd/thumbsupparrot.gif": "24876e7cbbe7e901c23e3778a7877c8d",
"static/defaults/hd/turndownforwatchparrot.gif": "86cc18db4cc9fa97cc7e783b3847deaf",
"static/defaults/hd/badparrot.gif": "fb45184de32705faaa38ed87289540ce",
"static/defaults/hd/parrotnotfound.gif": "f452d3aea06bfa4440ddaeb3407c4a2f",
"static/defaults/hd/60fpsparrot.gif": "f7b2783a761036df985901a25a1a97d4",
"static/defaults/hd/sassyparrot.gif": "3cfd1c9695eb5817cf3f59233076e9bf",
"static/defaults/hd/thefastestparrot.gif": "9fa7cf6c6191623da0ef701ffc92623d",
"static/defaults/hd/hardhatparrot.gif": "740eb4657aa31a5b07426ac02d61f96c",
"static/defaults/hd/flowerparrot.gif": "276166d259e96b46f109db30072180e9",
"static/defaults/hd/twinsparrot.gif": "f73aba4915729a02be5e7818e49f4488",
"static/defaults/hd/spinningparrot.gif": "25f04ceaae58bea662ca89741445619d",
"static/defaults/hd/tennisparrot.gif": "94abe5894dcb17dccce00b3b7d007db6",
"static/defaults/hd/brazilianplayerparrot.gif": "d994a4637783dd4d26f1b7e017bad1ee",
"static/defaults/hd/sidewaysparrot.gif": "8b85d45bf8cd9aecfc753d2ac6365bdb",
"static/defaults/hd/bouncingparrot.gif": "49f8b925f2a5bda50d6aefdad7115082",
"static/defaults/hd/ripparrot.gif": "947b74f27e26048551b8e35ec3037d91",
"static/defaults/hd/mardigrasparrot.gif": "bebea69a0f13922353c2988640516b21",
"static/defaults/hd/evilparrot.gif": "457cb66d0f8cfb396167764ec6af0846",
"static/defaults/hd/phparrot.gif": "6ea9be80018762946c728de2f9931379",
"static/defaults/hd/githubparrot.gif": "377b69d19727fba9ab9368232b91ff2e",
"static/defaults/hd/unicornparrot.gif": "f13af0f53a3319910872716aa0bca46a",
"static/defaults/hd/playcatchrightparrot.gif": "17831d89ab8d0f2086ead8b6896ae1dc",
"static/defaults/hd/hypnoparrot.gif": "da3a013e00e68affd67c45e2f8a18874",
"static/defaults/hd/verticalparrot.gif": "63fe1bad692c0561912b5b0967c1b9d5",
"static/defaults/hd/moonwalkingparrot.gif": "38772e3f5e6b80b2112ff1e5bfdc1dca",
"static/defaults/hd/autonomousparrot.gif": "07ab559fd640e1842b93e245832c6562",
"static/defaults/parrot.gif": "6088347ad6c63b754531db73234625d9",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "2c007826e1e7e5d68617724749590e65",
"assets/AssetManifest.json": "57f92f5c3f9a6a4781439ec970187d97",
"assets/NOTICES": "d7d951ad7810395b98f6970742a7556b",
"assets/FontManifest.json": "e024588c84b5d20cb7869d6f908130e8",
"assets/packages/line_icons/lib/assets/fonts/LineIcons.ttf": "23621397bc1906a79180a918e98f35b2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.smcbin": "7c3f7fd02c37cf59ae2c8d20c36ec515",
"assets/fonts/MaterialIcons-Regular.otf": "c29cda460c5d5d958e4d98c1e6e8f569",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"media/defaults/parrot.gif": "6088347ad6c63b754531db73234625d9"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
