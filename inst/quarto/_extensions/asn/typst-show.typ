// #import "typst-template.typ": report
#import "_extensions/asn/typst-template.typ": report

#show: body => report(
  title: [$title$],
  footer-title: [$footer-title$],
  subtitle: [$subtitle$],
  author: [$author$],
  date: "$date$",
  doi: "$doi$",
  toc: [$toc$],
  cover-image: "$cover-image$",
  cover-image-credit: "$cover-image-credit$",
  society: "$society$",
  department: "$department$",
  director-name: "$director-name$",
  director-title: "$director-title$",
  address-i: "$address-i$",
  address-ii: "$address-ii$",
  city-state-zip: "$city-state-zip$",
  email: "$email$",
  departmentwebsite: "$departmentwebsite$",
  body,
)