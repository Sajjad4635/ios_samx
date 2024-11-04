// import 'dart:html' as html;
//
// void downloadBlobFile(dynamic blobFile, String contentDisposition) {
//   final blob = html.Blob([blobFile]);
//   final url = html.Url.createObjectUrlFromBlob(blob);
//   final anchor = html.document.createElement('a') as html.AnchorElement
//     ..href = url
//     ..style.display = 'none'
//     ..download = contentDisposition;
//   html.document.body?.children.add(anchor);
//
//   anchor.click();
//
//   html.document.body?.children.remove(anchor);
//   html.Url.revokeObjectUrl(url);
// }
