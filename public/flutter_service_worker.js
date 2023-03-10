'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "0235f4a4e61cb846c2199146fed1049a",
"assets/assets/banner/contact.png": "764bd08d3b32fcf25c8c2fff89d4b2d3",
"assets/assets/banner/logo.png": "17b19341159c746b0c91023551721b21",
"assets/assets/banner/logo2.png": "d4b759547fc43bbad14e701c9c8ae022",
"assets/assets/header/banner2.png": "ea3ed0736c0d2d09f711923d6adee317",
"assets/assets/header/head.png": "8979bbe74afec64ac6fa75861879ef57",
"assets/assets/header/service.png": "72254b93a511df34ba05b79b886ec42c",
"assets/assets/services/check.png": "0e00f3eab7e8c204e0bd587baa8ee92c",
"assets/assets/team/1.jpg": "05d4ecb6d93f1ad2db42f6989586c582",
"assets/assets/team/10.jpg": "ea77e11f81f0532be137a1c499a8949e",
"assets/assets/team/11.jpg": "b9f2379b8dcbceeb9cf7348d5dd7d925",
"assets/assets/team/12.jpg": "ac8559415d228672ce609ea073a76a1c",
"assets/assets/team/2.jpg": "740349ff048a572bf51edf554d9bccac",
"assets/assets/team/3.jpg": "9b4e131090b8721885cfa51ad819d4e3",
"assets/assets/team/4.jpg": "a269564c8d2d20c091813bcad3177fb5",
"assets/assets/team/5.jpg": "c384a9b1a5bcea278d6156cc51f4f4f0",
"assets/assets/team/6.jpg": "dc7f616554468ee03dfb3e7865482499",
"assets/assets/team/7.jpg": "05834048481e77066d32a8004f38ed43",
"assets/assets/team/8.jpg": "bf91d19272e39f51de5ed2e88b96fb40",
"assets/assets/team/9.jpg": "0df0b256d961d9eb75402e87513bdd83",
"assets/assets/work/w1.jpg": "299b0b26e5fd7db73b7e9cfec239a6ee",
"assets/assets/work/w10.png": "6739fdd674ce27cd0cf9e72d07b376ae",
"assets/assets/work/w2.png": "cd01cf2893a234a3bdbb45e6d40448f9",
"assets/assets/work/w3.png": "3f3cb7106793b4869ee77d52eae09331",
"assets/assets/work/w4.png": "e650f81c3c7837a19997c157f4ccb164",
"assets/assets/work/w5.png": "a68264520bb162a7131b393a5b6cd10e",
"assets/assets/work/w6.png": "51cfb06f03add6b39a417c62073bbf91",
"assets/assets/work/w7.png": "962df882aa6694958a11e75bb993d43c",
"assets/assets/work/w8.png": "3012affb6c3929b6a21fd995c79dee26",
"assets/assets/work/w9.png": "1807289da1af73d5ba371b1be2dd276d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "772ebc25bea84f4b2945313b141c942a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "d63b66482d62bf7f0bf754d8aed8f611",
"/": "d63b66482d62bf7f0bf754d8aed8f611",
"main.dart.js": "9b859672e7cb6ada1a4016e37c8dcca8",
"manifest.json": "7b982b820ff50954c8e487e23b88909e",
"version.json": "f40f24470cfc48aa2bbd7e801ce8c64d"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
