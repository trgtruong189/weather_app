const linkAsset = 'lib/assets/images/weathers/';

class AssetCustom {
  static String getLinkImg (String name) => '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey{
  static const String api_token = '4d4b33af2b18a51fd1c1c5fa521a5e63';
}