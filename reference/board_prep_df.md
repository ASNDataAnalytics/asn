# Board Prep Resources

Resources used by nephrology fellows in preparation for initial board
certication in nephrology. This is a synthesized data set generated
based on proportions of actual responses to measures in the 2025 ASN
Nephrology Fellow Survey.

## Usage

``` r
board_prep_df
```

## Format

A data frame with 8 columns

1.  `q6`: Repondent medical school location, either "United States" or
    "Other country".

2.  `q65_1`: ASN Kidney Self-Assessment Program (KSAP) selected as a
    used resource ( = "No").

3.  `q65_2`: ASN Nephrology Self-Assessment Program (NephSAP) selected
    as a used resource ( = "No").

4.  `q65_3`: ASN Board Review Course & Update selected as a used
    resource ( = "No").

5.  `q65_4`: Oakstone/Brigham Intensive Review of Nephrology Course ( =
    "No").

6.  `q65_5`: Other board review course ( = "No").

7.  `q65_6`: Other resource(s) (please specify) ( = "No").

8.  `q65_6_text`: Free text response describing other resource(s) used.

## Source

<https://data.asn-online.org/posts/2025_fellow_survey/>

## Examples

``` r
board_prep_df
#>                q6                                     q65_1
#> 1   United States ASN Kidney Self-Assessment Program (KSAP)
#> 2   Other country                                      <NA>
#> 3   United States ASN Kidney Self-Assessment Program (KSAP)
#> 4   United States                                      <NA>
#> 5   United States                                      <NA>
#> 6   United States ASN Kidney Self-Assessment Program (KSAP)
#> 7   United States                                      <NA>
#> 8   United States                                      <NA>
#> 9   Other country                                      <NA>
#> 10  United States                                      <NA>
#> 11  Other country                                      <NA>
#> 12  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 13  United States                                      <NA>
#> 14  Other country                                      <NA>
#> 15  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 16  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 17  United States ASN Kidney Self-Assessment Program (KSAP)
#> 18  Other country                                      <NA>
#> 19  Other country                                      <NA>
#> 20  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 21  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 22  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 23  United States                                      <NA>
#> 24  Other country                                      <NA>
#> 25  United States ASN Kidney Self-Assessment Program (KSAP)
#> 26  Other country                                      <NA>
#> 27  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 28  Other country                                      <NA>
#> 29  United States ASN Kidney Self-Assessment Program (KSAP)
#> 30  United States ASN Kidney Self-Assessment Program (KSAP)
#> 31  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 32  United States                                      <NA>
#> 33  United States                                      <NA>
#> 34  Other country                                      <NA>
#> 35  United States                                      <NA>
#> 36  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 37  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 38  Other country                                      <NA>
#> 39  United States ASN Kidney Self-Assessment Program (KSAP)
#> 40  Other country                                      <NA>
#> 41  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 42  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 43  Other country                                      <NA>
#> 44  Other country                                      <NA>
#> 45  United States                                      <NA>
#> 46  Other country                                      <NA>
#> 47  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 48  Other country                                      <NA>
#> 49  United States ASN Kidney Self-Assessment Program (KSAP)
#> 50  Other country                                      <NA>
#> 51  Other country                                      <NA>
#> 52  United States ASN Kidney Self-Assessment Program (KSAP)
#> 53  Other country                                      <NA>
#> 54  United States                                      <NA>
#> 55  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 56  Other country                                      <NA>
#> 57  Other country                                      <NA>
#> 58  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 59  United States                                      <NA>
#> 60  Other country                                      <NA>
#> 61  Other country                                      <NA>
#> 62  Other country                                      <NA>
#> 63  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 64  Other country                                      <NA>
#> 65  Other country                                      <NA>
#> 66  Other country                                      <NA>
#> 67  United States                                      <NA>
#> 68  Other country                                      <NA>
#> 69  United States                                      <NA>
#> 70  United States ASN Kidney Self-Assessment Program (KSAP)
#> 71  United States                                      <NA>
#> 72  United States                                      <NA>
#> 73  Other country                                      <NA>
#> 74  Other country                                      <NA>
#> 75  Other country                                      <NA>
#> 76  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 77  United States ASN Kidney Self-Assessment Program (KSAP)
#> 78  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 79  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 80  Other country                                      <NA>
#> 81  United States ASN Kidney Self-Assessment Program (KSAP)
#> 82  Other country                                      <NA>
#> 83  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 84  Other country                                      <NA>
#> 85  United States                                      <NA>
#> 86  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 87  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 88  United States                                      <NA>
#> 89  United States ASN Kidney Self-Assessment Program (KSAP)
#> 90  United States                                      <NA>
#> 91  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 92  Other country ASN Kidney Self-Assessment Program (KSAP)
#> 93  United States                                      <NA>
#> 94  Other country                                      <NA>
#> 95  Other country                                      <NA>
#> 96  Other country                                      <NA>
#> 97  United States                                      <NA>
#> 98  United States                                      <NA>
#> 99  United States ASN Kidney Self-Assessment Program (KSAP)
#> 100 Other country                                      <NA>
#> 101 United States                                      <NA>
#> 102 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 103 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 104 Other country                                      <NA>
#> 105 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 106 Other country                                      <NA>
#> 107 United States ASN Kidney Self-Assessment Program (KSAP)
#> 108 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 109 Other country                                      <NA>
#> 110 Other country                                      <NA>
#> 111 Other country                                      <NA>
#> 112 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 113 United States                                      <NA>
#> 114 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 115 Other country                                      <NA>
#> 116 Other country                                      <NA>
#> 117 United States ASN Kidney Self-Assessment Program (KSAP)
#> 118 United States                                      <NA>
#> 119 United States ASN Kidney Self-Assessment Program (KSAP)
#> 120 Other country                                      <NA>
#> 121 United States ASN Kidney Self-Assessment Program (KSAP)
#> 122 Other country                                      <NA>
#> 123 United States ASN Kidney Self-Assessment Program (KSAP)
#> 124 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 125 United States ASN Kidney Self-Assessment Program (KSAP)
#> 126 Other country                                      <NA>
#> 127 United States ASN Kidney Self-Assessment Program (KSAP)
#> 128 Other country                                      <NA>
#> 129 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 130 Other country                                      <NA>
#> 131 Other country                                      <NA>
#> 132 United States ASN Kidney Self-Assessment Program (KSAP)
#> 133 United States ASN Kidney Self-Assessment Program (KSAP)
#> 134 United States ASN Kidney Self-Assessment Program (KSAP)
#> 135 Other country                                      <NA>
#> 136 United States ASN Kidney Self-Assessment Program (KSAP)
#> 137 Other country                                      <NA>
#> 138 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 139 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 140 Other country                                      <NA>
#> 141 Other country                                      <NA>
#> 142 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 143 United States ASN Kidney Self-Assessment Program (KSAP)
#> 144 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 145 United States                                      <NA>
#> 146 United States ASN Kidney Self-Assessment Program (KSAP)
#> 147 United States                                      <NA>
#> 148 United States                                      <NA>
#> 149 Other country                                      <NA>
#> 150 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 151 Other country                                      <NA>
#> 152 United States ASN Kidney Self-Assessment Program (KSAP)
#> 153 Other country                                      <NA>
#> 154 United States                                      <NA>
#> 155 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 156 United States                                      <NA>
#> 157 Other country                                      <NA>
#> 158 Other country                                      <NA>
#> 159 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 160 United States ASN Kidney Self-Assessment Program (KSAP)
#> 161 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 162 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 163 Other country                                      <NA>
#> 164 Other country                                      <NA>
#> 165 Other country                                      <NA>
#> 166 United States                                      <NA>
#> 167 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 168 United States ASN Kidney Self-Assessment Program (KSAP)
#> 169 United States ASN Kidney Self-Assessment Program (KSAP)
#> 170 United States                                      <NA>
#> 171 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 172 United States                                      <NA>
#> 173 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 174 United States ASN Kidney Self-Assessment Program (KSAP)
#> 175 United States ASN Kidney Self-Assessment Program (KSAP)
#> 176 United States                                      <NA>
#> 177 Other country                                      <NA>
#> 178 United States ASN Kidney Self-Assessment Program (KSAP)
#> 179 United States                                      <NA>
#> 180 United States ASN Kidney Self-Assessment Program (KSAP)
#> 181 United States ASN Kidney Self-Assessment Program (KSAP)
#> 182 Other country                                      <NA>
#> 183 United States ASN Kidney Self-Assessment Program (KSAP)
#> 184 Other country                                      <NA>
#> 185 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 186 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 187 Other country                                      <NA>
#> 188 Other country                                      <NA>
#> 189 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 190 United States ASN Kidney Self-Assessment Program (KSAP)
#> 191 United States ASN Kidney Self-Assessment Program (KSAP)
#> 192 United States ASN Kidney Self-Assessment Program (KSAP)
#> 193 United States                                      <NA>
#> 194 United States                                      <NA>
#> 195 United States                                      <NA>
#> 196 United States                                      <NA>
#> 197 United States                                      <NA>
#> 198 United States ASN Kidney Self-Assessment Program (KSAP)
#> 199 United States                                      <NA>
#> 200 United States                                      <NA>
#> 201 United States                                      <NA>
#> 202 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 203 Other country                                      <NA>
#> 204 United States ASN Kidney Self-Assessment Program (KSAP)
#> 205 Other country                                      <NA>
#> 206 United States                                      <NA>
#> 207 United States ASN Kidney Self-Assessment Program (KSAP)
#> 208 Other country                                      <NA>
#> 209 Other country                                      <NA>
#> 210 Other country                                      <NA>
#> 211 Other country                                      <NA>
#> 212 Other country                                      <NA>
#> 213 United States                                      <NA>
#> 214 United States ASN Kidney Self-Assessment Program (KSAP)
#> 215 Other country                                      <NA>
#> 216 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 217 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 218 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 219 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 220 Other country                                      <NA>
#> 221 United States                                      <NA>
#> 222 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 223 Other country                                      <NA>
#> 224 Other country                                      <NA>
#> 225 United States ASN Kidney Self-Assessment Program (KSAP)
#> 226 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 227 United States ASN Kidney Self-Assessment Program (KSAP)
#> 228 Other country                                      <NA>
#> 229 Other country                                      <NA>
#> 230 Other country                                      <NA>
#> 231 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 232 United States                                      <NA>
#> 233 Other country                                      <NA>
#> 234 United States ASN Kidney Self-Assessment Program (KSAP)
#> 235 Other country                                      <NA>
#> 236 Other country                                      <NA>
#> 237 Other country                                      <NA>
#> 238 Other country                                      <NA>
#> 239 United States                                      <NA>
#> 240 Other country                                      <NA>
#> 241 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 242 United States                                      <NA>
#> 243 Other country                                      <NA>
#> 244 United States ASN Kidney Self-Assessment Program (KSAP)
#> 245 Other country                                      <NA>
#> 246 United States                                      <NA>
#> 247 United States                                      <NA>
#> 248 United States                                      <NA>
#> 249 United States                                      <NA>
#> 250 United States ASN Kidney Self-Assessment Program (KSAP)
#> 251 Other country                                      <NA>
#> 252 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 253 Other country                                      <NA>
#> 254 United States                                      <NA>
#> 255 Other country                                      <NA>
#> 256 Other country                                      <NA>
#> 257 Other country                                      <NA>
#> 258 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 259 Other country                                      <NA>
#> 260 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 261 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 262 Other country                                      <NA>
#> 263 United States                                      <NA>
#> 264 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 265 United States                                      <NA>
#> 266 Other country                                      <NA>
#> 267 Other country                                      <NA>
#> 268 Other country                                      <NA>
#> 269 Other country                                      <NA>
#> 270 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 271 United States ASN Kidney Self-Assessment Program (KSAP)
#> 272 Other country                                      <NA>
#> 273 Other country                                      <NA>
#> 274 Other country                                      <NA>
#> 275 United States ASN Kidney Self-Assessment Program (KSAP)
#> 276 Other country                                      <NA>
#> 277 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 278 Other country                                      <NA>
#> 279 Other country                                      <NA>
#> 280 United States ASN Kidney Self-Assessment Program (KSAP)
#> 281 United States                                      <NA>
#> 282 United States                                      <NA>
#> 283 Other country                                      <NA>
#> 284 United States ASN Kidney Self-Assessment Program (KSAP)
#> 285 United States ASN Kidney Self-Assessment Program (KSAP)
#> 286 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 287 Other country                                      <NA>
#> 288 United States ASN Kidney Self-Assessment Program (KSAP)
#> 289 United States                                      <NA>
#> 290 United States                                      <NA>
#> 291 United States ASN Kidney Self-Assessment Program (KSAP)
#> 292 Other country                                      <NA>
#> 293 United States                                      <NA>
#> 294 Other country                                      <NA>
#> 295 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 296 United States                                      <NA>
#> 297 United States                                      <NA>
#> 298 Other country                                      <NA>
#> 299 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 300 Other country                                      <NA>
#> 301 United States ASN Kidney Self-Assessment Program (KSAP)
#> 302 United States ASN Kidney Self-Assessment Program (KSAP)
#> 303 United States ASN Kidney Self-Assessment Program (KSAP)
#> 304 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 305 United States ASN Kidney Self-Assessment Program (KSAP)
#> 306 Other country                                      <NA>
#> 307 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 308 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 309 United States                                      <NA>
#> 310 Other country                                      <NA>
#> 311 United States                                      <NA>
#> 312 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 313 Other country                                      <NA>
#> 314 United States                                      <NA>
#> 315 United States                                      <NA>
#> 316 Other country                                      <NA>
#> 317 United States ASN Kidney Self-Assessment Program (KSAP)
#> 318 Other country                                      <NA>
#> 319 United States                                      <NA>
#> 320 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 321 United States                                      <NA>
#> 322 Other country                                      <NA>
#> 323 United States ASN Kidney Self-Assessment Program (KSAP)
#> 324 Other country                                      <NA>
#> 325 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 326 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 327 Other country                                      <NA>
#> 328 Other country                                      <NA>
#> 329 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 330 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 331 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 332 United States ASN Kidney Self-Assessment Program (KSAP)
#> 333 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 334 United States                                      <NA>
#> 335 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 336 Other country                                      <NA>
#> 337 Other country                                      <NA>
#> 338 United States ASN Kidney Self-Assessment Program (KSAP)
#> 339 United States ASN Kidney Self-Assessment Program (KSAP)
#> 340 Other country                                      <NA>
#> 341 Other country                                      <NA>
#> 342 Other country                                      <NA>
#> 343 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 344 Other country                                      <NA>
#> 345 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 346 Other country                                      <NA>
#> 347 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 348 United States                                      <NA>
#> 349 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 350 United States                                      <NA>
#> 351 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 352 United States                                      <NA>
#> 353 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 354 Other country                                      <NA>
#> 355 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 356 United States                                      <NA>
#> 357 United States ASN Kidney Self-Assessment Program (KSAP)
#> 358 Other country                                      <NA>
#> 359 Other country                                      <NA>
#> 360 Other country                                      <NA>
#> 361 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 362 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 363 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 364 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 365 Other country                                      <NA>
#> 366 United States ASN Kidney Self-Assessment Program (KSAP)
#> 367 United States                                      <NA>
#> 368 United States                                      <NA>
#> 369 United States ASN Kidney Self-Assessment Program (KSAP)
#> 370 Other country                                      <NA>
#> 371 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 372 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 373 United States                                      <NA>
#> 374 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 375 United States                                      <NA>
#> 376 United States                                      <NA>
#> 377 United States                                      <NA>
#> 378 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 379 Other country                                      <NA>
#> 380 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 381 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 382 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 383 United States ASN Kidney Self-Assessment Program (KSAP)
#> 384 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 385 Other country                                      <NA>
#> 386 Other country                                      <NA>
#> 387 Other country                                      <NA>
#> 388 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 389 Other country                                      <NA>
#> 390 United States ASN Kidney Self-Assessment Program (KSAP)
#> 391 United States ASN Kidney Self-Assessment Program (KSAP)
#> 392 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 393 Other country                                      <NA>
#> 394 Other country                                      <NA>
#> 395 Other country                                      <NA>
#> 396 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 397 United States ASN Kidney Self-Assessment Program (KSAP)
#> 398 Other country ASN Kidney Self-Assessment Program (KSAP)
#> 399 Other country                                      <NA>
#> 400 Other country                                      <NA>
#>                                                q65_2
#> 1   ASN Nephrology Self-Assessment Program (NephSAP)
#> 2                                               <NA>
#> 3                                               <NA>
#> 4   ASN Nephrology Self-Assessment Program (NephSAP)
#> 5                                               <NA>
#> 6                                               <NA>
#> 7                                               <NA>
#> 8                                               <NA>
#> 9                                               <NA>
#> 10                                              <NA>
#> 11  ASN Nephrology Self-Assessment Program (NephSAP)
#> 12                                              <NA>
#> 13  ASN Nephrology Self-Assessment Program (NephSAP)
#> 14                                              <NA>
#> 15                                              <NA>
#> 16                                              <NA>
#> 17  ASN Nephrology Self-Assessment Program (NephSAP)
#> 18                                              <NA>
#> 19                                              <NA>
#> 20  ASN Nephrology Self-Assessment Program (NephSAP)
#> 21  ASN Nephrology Self-Assessment Program (NephSAP)
#> 22                                              <NA>
#> 23                                              <NA>
#> 24  ASN Nephrology Self-Assessment Program (NephSAP)
#> 25                                              <NA>
#> 26  ASN Nephrology Self-Assessment Program (NephSAP)
#> 27                                              <NA>
#> 28                                              <NA>
#> 29                                              <NA>
#> 30  ASN Nephrology Self-Assessment Program (NephSAP)
#> 31                                              <NA>
#> 32                                              <NA>
#> 33                                              <NA>
#> 34                                              <NA>
#> 35                                              <NA>
#> 36                                              <NA>
#> 37  ASN Nephrology Self-Assessment Program (NephSAP)
#> 38                                              <NA>
#> 39                                              <NA>
#> 40                                              <NA>
#> 41                                              <NA>
#> 42                                              <NA>
#> 43                                              <NA>
#> 44                                              <NA>
#> 45                                              <NA>
#> 46                                              <NA>
#> 47                                              <NA>
#> 48  ASN Nephrology Self-Assessment Program (NephSAP)
#> 49  ASN Nephrology Self-Assessment Program (NephSAP)
#> 50                                              <NA>
#> 51                                              <NA>
#> 52                                              <NA>
#> 53                                              <NA>
#> 54                                              <NA>
#> 55                                              <NA>
#> 56                                              <NA>
#> 57                                              <NA>
#> 58                                              <NA>
#> 59  ASN Nephrology Self-Assessment Program (NephSAP)
#> 60                                              <NA>
#> 61                                              <NA>
#> 62                                              <NA>
#> 63                                              <NA>
#> 64                                              <NA>
#> 65                                              <NA>
#> 66  ASN Nephrology Self-Assessment Program (NephSAP)
#> 67                                              <NA>
#> 68                                              <NA>
#> 69  ASN Nephrology Self-Assessment Program (NephSAP)
#> 70  ASN Nephrology Self-Assessment Program (NephSAP)
#> 71                                              <NA>
#> 72  ASN Nephrology Self-Assessment Program (NephSAP)
#> 73                                              <NA>
#> 74  ASN Nephrology Self-Assessment Program (NephSAP)
#> 75                                              <NA>
#> 76                                              <NA>
#> 77                                              <NA>
#> 78                                              <NA>
#> 79                                              <NA>
#> 80  ASN Nephrology Self-Assessment Program (NephSAP)
#> 81                                              <NA>
#> 82  ASN Nephrology Self-Assessment Program (NephSAP)
#> 83                                              <NA>
#> 84                                              <NA>
#> 85                                              <NA>
#> 86  ASN Nephrology Self-Assessment Program (NephSAP)
#> 87                                              <NA>
#> 88  ASN Nephrology Self-Assessment Program (NephSAP)
#> 89                                              <NA>
#> 90                                              <NA>
#> 91  ASN Nephrology Self-Assessment Program (NephSAP)
#> 92                                              <NA>
#> 93                                              <NA>
#> 94                                              <NA>
#> 95                                              <NA>
#> 96                                              <NA>
#> 97  ASN Nephrology Self-Assessment Program (NephSAP)
#> 98  ASN Nephrology Self-Assessment Program (NephSAP)
#> 99                                              <NA>
#> 100                                             <NA>
#> 101                                             <NA>
#> 102                                             <NA>
#> 103                                             <NA>
#> 104                                             <NA>
#> 105 ASN Nephrology Self-Assessment Program (NephSAP)
#> 106                                             <NA>
#> 107 ASN Nephrology Self-Assessment Program (NephSAP)
#> 108 ASN Nephrology Self-Assessment Program (NephSAP)
#> 109                                             <NA>
#> 110 ASN Nephrology Self-Assessment Program (NephSAP)
#> 111                                             <NA>
#> 112                                             <NA>
#> 113 ASN Nephrology Self-Assessment Program (NephSAP)
#> 114                                             <NA>
#> 115                                             <NA>
#> 116                                             <NA>
#> 117                                             <NA>
#> 118                                             <NA>
#> 119                                             <NA>
#> 120 ASN Nephrology Self-Assessment Program (NephSAP)
#> 121 ASN Nephrology Self-Assessment Program (NephSAP)
#> 122                                             <NA>
#> 123                                             <NA>
#> 124                                             <NA>
#> 125                                             <NA>
#> 126                                             <NA>
#> 127                                             <NA>
#> 128                                             <NA>
#> 129                                             <NA>
#> 130                                             <NA>
#> 131                                             <NA>
#> 132 ASN Nephrology Self-Assessment Program (NephSAP)
#> 133                                             <NA>
#> 134 ASN Nephrology Self-Assessment Program (NephSAP)
#> 135 ASN Nephrology Self-Assessment Program (NephSAP)
#> 136                                             <NA>
#> 137                                             <NA>
#> 138 ASN Nephrology Self-Assessment Program (NephSAP)
#> 139                                             <NA>
#> 140                                             <NA>
#> 141                                             <NA>
#> 142 ASN Nephrology Self-Assessment Program (NephSAP)
#> 143                                             <NA>
#> 144                                             <NA>
#> 145 ASN Nephrology Self-Assessment Program (NephSAP)
#> 146 ASN Nephrology Self-Assessment Program (NephSAP)
#> 147                                             <NA>
#> 148 ASN Nephrology Self-Assessment Program (NephSAP)
#> 149                                             <NA>
#> 150 ASN Nephrology Self-Assessment Program (NephSAP)
#> 151                                             <NA>
#> 152                                             <NA>
#> 153                                             <NA>
#> 154                                             <NA>
#> 155                                             <NA>
#> 156 ASN Nephrology Self-Assessment Program (NephSAP)
#> 157                                             <NA>
#> 158                                             <NA>
#> 159                                             <NA>
#> 160                                             <NA>
#> 161                                             <NA>
#> 162                                             <NA>
#> 163                                             <NA>
#> 164 ASN Nephrology Self-Assessment Program (NephSAP)
#> 165                                             <NA>
#> 166                                             <NA>
#> 167 ASN Nephrology Self-Assessment Program (NephSAP)
#> 168                                             <NA>
#> 169                                             <NA>
#> 170                                             <NA>
#> 171                                             <NA>
#> 172 ASN Nephrology Self-Assessment Program (NephSAP)
#> 173                                             <NA>
#> 174                                             <NA>
#> 175 ASN Nephrology Self-Assessment Program (NephSAP)
#> 176                                             <NA>
#> 177                                             <NA>
#> 178                                             <NA>
#> 179                                             <NA>
#> 180 ASN Nephrology Self-Assessment Program (NephSAP)
#> 181 ASN Nephrology Self-Assessment Program (NephSAP)
#> 182                                             <NA>
#> 183                                             <NA>
#> 184                                             <NA>
#> 185                                             <NA>
#> 186                                             <NA>
#> 187                                             <NA>
#> 188                                             <NA>
#> 189                                             <NA>
#> 190                                             <NA>
#> 191 ASN Nephrology Self-Assessment Program (NephSAP)
#> 192                                             <NA>
#> 193                                             <NA>
#> 194                                             <NA>
#> 195                                             <NA>
#> 196                                             <NA>
#> 197                                             <NA>
#> 198                                             <NA>
#> 199 ASN Nephrology Self-Assessment Program (NephSAP)
#> 200                                             <NA>
#> 201                                             <NA>
#> 202 ASN Nephrology Self-Assessment Program (NephSAP)
#> 203                                             <NA>
#> 204                                             <NA>
#> 205 ASN Nephrology Self-Assessment Program (NephSAP)
#> 206                                             <NA>
#> 207                                             <NA>
#> 208                                             <NA>
#> 209                                             <NA>
#> 210                                             <NA>
#> 211                                             <NA>
#> 212 ASN Nephrology Self-Assessment Program (NephSAP)
#> 213                                             <NA>
#> 214                                             <NA>
#> 215 ASN Nephrology Self-Assessment Program (NephSAP)
#> 216                                             <NA>
#> 217 ASN Nephrology Self-Assessment Program (NephSAP)
#> 218 ASN Nephrology Self-Assessment Program (NephSAP)
#> 219 ASN Nephrology Self-Assessment Program (NephSAP)
#> 220                                             <NA>
#> 221                                             <NA>
#> 222 ASN Nephrology Self-Assessment Program (NephSAP)
#> 223                                             <NA>
#> 224 ASN Nephrology Self-Assessment Program (NephSAP)
#> 225                                             <NA>
#> 226                                             <NA>
#> 227                                             <NA>
#> 228                                             <NA>
#> 229                                             <NA>
#> 230                                             <NA>
#> 231                                             <NA>
#> 232                                             <NA>
#> 233 ASN Nephrology Self-Assessment Program (NephSAP)
#> 234                                             <NA>
#> 235                                             <NA>
#> 236 ASN Nephrology Self-Assessment Program (NephSAP)
#> 237 ASN Nephrology Self-Assessment Program (NephSAP)
#> 238                                             <NA>
#> 239                                             <NA>
#> 240                                             <NA>
#> 241 ASN Nephrology Self-Assessment Program (NephSAP)
#> 242                                             <NA>
#> 243                                             <NA>
#> 244                                             <NA>
#> 245                                             <NA>
#> 246                                             <NA>
#> 247                                             <NA>
#> 248 ASN Nephrology Self-Assessment Program (NephSAP)
#> 249                                             <NA>
#> 250                                             <NA>
#> 251                                             <NA>
#> 252 ASN Nephrology Self-Assessment Program (NephSAP)
#> 253 ASN Nephrology Self-Assessment Program (NephSAP)
#> 254 ASN Nephrology Self-Assessment Program (NephSAP)
#> 255                                             <NA>
#> 256                                             <NA>
#> 257                                             <NA>
#> 258                                             <NA>
#> 259                                             <NA>
#> 260                                             <NA>
#> 261                                             <NA>
#> 262 ASN Nephrology Self-Assessment Program (NephSAP)
#> 263 ASN Nephrology Self-Assessment Program (NephSAP)
#> 264                                             <NA>
#> 265                                             <NA>
#> 266                                             <NA>
#> 267 ASN Nephrology Self-Assessment Program (NephSAP)
#> 268                                             <NA>
#> 269                                             <NA>
#> 270                                             <NA>
#> 271                                             <NA>
#> 272                                             <NA>
#> 273 ASN Nephrology Self-Assessment Program (NephSAP)
#> 274 ASN Nephrology Self-Assessment Program (NephSAP)
#> 275                                             <NA>
#> 276                                             <NA>
#> 277                                             <NA>
#> 278 ASN Nephrology Self-Assessment Program (NephSAP)
#> 279                                             <NA>
#> 280                                             <NA>
#> 281                                             <NA>
#> 282 ASN Nephrology Self-Assessment Program (NephSAP)
#> 283 ASN Nephrology Self-Assessment Program (NephSAP)
#> 284 ASN Nephrology Self-Assessment Program (NephSAP)
#> 285                                             <NA>
#> 286                                             <NA>
#> 287                                             <NA>
#> 288 ASN Nephrology Self-Assessment Program (NephSAP)
#> 289                                             <NA>
#> 290                                             <NA>
#> 291                                             <NA>
#> 292 ASN Nephrology Self-Assessment Program (NephSAP)
#> 293                                             <NA>
#> 294                                             <NA>
#> 295                                             <NA>
#> 296 ASN Nephrology Self-Assessment Program (NephSAP)
#> 297                                             <NA>
#> 298                                             <NA>
#> 299                                             <NA>
#> 300                                             <NA>
#> 301 ASN Nephrology Self-Assessment Program (NephSAP)
#> 302 ASN Nephrology Self-Assessment Program (NephSAP)
#> 303                                             <NA>
#> 304 ASN Nephrology Self-Assessment Program (NephSAP)
#> 305 ASN Nephrology Self-Assessment Program (NephSAP)
#> 306 ASN Nephrology Self-Assessment Program (NephSAP)
#> 307                                             <NA>
#> 308 ASN Nephrology Self-Assessment Program (NephSAP)
#> 309                                             <NA>
#> 310 ASN Nephrology Self-Assessment Program (NephSAP)
#> 311 ASN Nephrology Self-Assessment Program (NephSAP)
#> 312                                             <NA>
#> 313 ASN Nephrology Self-Assessment Program (NephSAP)
#> 314                                             <NA>
#> 315                                             <NA>
#> 316 ASN Nephrology Self-Assessment Program (NephSAP)
#> 317                                             <NA>
#> 318                                             <NA>
#> 319                                             <NA>
#> 320                                             <NA>
#> 321                                             <NA>
#> 322                                             <NA>
#> 323                                             <NA>
#> 324 ASN Nephrology Self-Assessment Program (NephSAP)
#> 325                                             <NA>
#> 326 ASN Nephrology Self-Assessment Program (NephSAP)
#> 327 ASN Nephrology Self-Assessment Program (NephSAP)
#> 328                                             <NA>
#> 329                                             <NA>
#> 330                                             <NA>
#> 331 ASN Nephrology Self-Assessment Program (NephSAP)
#> 332                                             <NA>
#> 333                                             <NA>
#> 334                                             <NA>
#> 335                                             <NA>
#> 336                                             <NA>
#> 337                                             <NA>
#> 338                                             <NA>
#> 339                                             <NA>
#> 340                                             <NA>
#> 341                                             <NA>
#> 342                                             <NA>
#> 343 ASN Nephrology Self-Assessment Program (NephSAP)
#> 344                                             <NA>
#> 345                                             <NA>
#> 346 ASN Nephrology Self-Assessment Program (NephSAP)
#> 347                                             <NA>
#> 348                                             <NA>
#> 349                                             <NA>
#> 350                                             <NA>
#> 351                                             <NA>
#> 352 ASN Nephrology Self-Assessment Program (NephSAP)
#> 353                                             <NA>
#> 354                                             <NA>
#> 355                                             <NA>
#> 356                                             <NA>
#> 357                                             <NA>
#> 358                                             <NA>
#> 359 ASN Nephrology Self-Assessment Program (NephSAP)
#> 360 ASN Nephrology Self-Assessment Program (NephSAP)
#> 361                                             <NA>
#> 362                                             <NA>
#> 363                                             <NA>
#> 364                                             <NA>
#> 365                                             <NA>
#> 366                                             <NA>
#> 367 ASN Nephrology Self-Assessment Program (NephSAP)
#> 368                                             <NA>
#> 369                                             <NA>
#> 370                                             <NA>
#> 371 ASN Nephrology Self-Assessment Program (NephSAP)
#> 372 ASN Nephrology Self-Assessment Program (NephSAP)
#> 373 ASN Nephrology Self-Assessment Program (NephSAP)
#> 374                                             <NA>
#> 375                                             <NA>
#> 376                                             <NA>
#> 377 ASN Nephrology Self-Assessment Program (NephSAP)
#> 378                                             <NA>
#> 379                                             <NA>
#> 380                                             <NA>
#> 381 ASN Nephrology Self-Assessment Program (NephSAP)
#> 382 ASN Nephrology Self-Assessment Program (NephSAP)
#> 383                                             <NA>
#> 384                                             <NA>
#> 385                                             <NA>
#> 386 ASN Nephrology Self-Assessment Program (NephSAP)
#> 387                                             <NA>
#> 388 ASN Nephrology Self-Assessment Program (NephSAP)
#> 389                                             <NA>
#> 390                                             <NA>
#> 391                                             <NA>
#> 392                                             <NA>
#> 393                                             <NA>
#> 394 ASN Nephrology Self-Assessment Program (NephSAP)
#> 395                                             <NA>
#> 396 ASN Nephrology Self-Assessment Program (NephSAP)
#> 397 ASN Nephrology Self-Assessment Program (NephSAP)
#> 398                                             <NA>
#> 399                                             <NA>
#> 400                                             <NA>
#>                                q65_3
#> 1                               <NA>
#> 2   ASN Board Review Course & Update
#> 3                               <NA>
#> 4                               <NA>
#> 5                               <NA>
#> 6   ASN Board Review Course & Update
#> 7                               <NA>
#> 8                               <NA>
#> 9                               <NA>
#> 10                              <NA>
#> 11                              <NA>
#> 12                              <NA>
#> 13                              <NA>
#> 14                              <NA>
#> 15                              <NA>
#> 16                              <NA>
#> 17                              <NA>
#> 18  ASN Board Review Course & Update
#> 19  ASN Board Review Course & Update
#> 20                              <NA>
#> 21                              <NA>
#> 22                              <NA>
#> 23  ASN Board Review Course & Update
#> 24  ASN Board Review Course & Update
#> 25  ASN Board Review Course & Update
#> 26                              <NA>
#> 27                              <NA>
#> 28                              <NA>
#> 29                              <NA>
#> 30  ASN Board Review Course & Update
#> 31                              <NA>
#> 32  ASN Board Review Course & Update
#> 33  ASN Board Review Course & Update
#> 34                              <NA>
#> 35                              <NA>
#> 36  ASN Board Review Course & Update
#> 37                              <NA>
#> 38  ASN Board Review Course & Update
#> 39                              <NA>
#> 40                              <NA>
#> 41                              <NA>
#> 42  ASN Board Review Course & Update
#> 43                              <NA>
#> 44                              <NA>
#> 45                              <NA>
#> 46                              <NA>
#> 47  ASN Board Review Course & Update
#> 48  ASN Board Review Course & Update
#> 49                              <NA>
#> 50  ASN Board Review Course & Update
#> 51                              <NA>
#> 52                              <NA>
#> 53                              <NA>
#> 54  ASN Board Review Course & Update
#> 55                              <NA>
#> 56  ASN Board Review Course & Update
#> 57  ASN Board Review Course & Update
#> 58                              <NA>
#> 59  ASN Board Review Course & Update
#> 60                              <NA>
#> 61                              <NA>
#> 62                              <NA>
#> 63                              <NA>
#> 64  ASN Board Review Course & Update
#> 65                              <NA>
#> 66                              <NA>
#> 67  ASN Board Review Course & Update
#> 68  ASN Board Review Course & Update
#> 69  ASN Board Review Course & Update
#> 70  ASN Board Review Course & Update
#> 71                              <NA>
#> 72                              <NA>
#> 73                              <NA>
#> 74                              <NA>
#> 75                              <NA>
#> 76                              <NA>
#> 77  ASN Board Review Course & Update
#> 78  ASN Board Review Course & Update
#> 79  ASN Board Review Course & Update
#> 80  ASN Board Review Course & Update
#> 81                              <NA>
#> 82  ASN Board Review Course & Update
#> 83  ASN Board Review Course & Update
#> 84                              <NA>
#> 85                              <NA>
#> 86                              <NA>
#> 87                              <NA>
#> 88                              <NA>
#> 89  ASN Board Review Course & Update
#> 90                              <NA>
#> 91                              <NA>
#> 92                              <NA>
#> 93  ASN Board Review Course & Update
#> 94  ASN Board Review Course & Update
#> 95                              <NA>
#> 96  ASN Board Review Course & Update
#> 97                              <NA>
#> 98                              <NA>
#> 99  ASN Board Review Course & Update
#> 100 ASN Board Review Course & Update
#> 101 ASN Board Review Course & Update
#> 102                             <NA>
#> 103                             <NA>
#> 104 ASN Board Review Course & Update
#> 105 ASN Board Review Course & Update
#> 106 ASN Board Review Course & Update
#> 107                             <NA>
#> 108                             <NA>
#> 109                             <NA>
#> 110 ASN Board Review Course & Update
#> 111 ASN Board Review Course & Update
#> 112                             <NA>
#> 113 ASN Board Review Course & Update
#> 114                             <NA>
#> 115                             <NA>
#> 116 ASN Board Review Course & Update
#> 117                             <NA>
#> 118 ASN Board Review Course & Update
#> 119                             <NA>
#> 120                             <NA>
#> 121                             <NA>
#> 122 ASN Board Review Course & Update
#> 123                             <NA>
#> 124 ASN Board Review Course & Update
#> 125                             <NA>
#> 126                             <NA>
#> 127                             <NA>
#> 128                             <NA>
#> 129                             <NA>
#> 130                             <NA>
#> 131 ASN Board Review Course & Update
#> 132                             <NA>
#> 133                             <NA>
#> 134 ASN Board Review Course & Update
#> 135 ASN Board Review Course & Update
#> 136                             <NA>
#> 137                             <NA>
#> 138 ASN Board Review Course & Update
#> 139                             <NA>
#> 140                             <NA>
#> 141                             <NA>
#> 142 ASN Board Review Course & Update
#> 143 ASN Board Review Course & Update
#> 144                             <NA>
#> 145                             <NA>
#> 146                             <NA>
#> 147                             <NA>
#> 148                             <NA>
#> 149                             <NA>
#> 150 ASN Board Review Course & Update
#> 151 ASN Board Review Course & Update
#> 152                             <NA>
#> 153                             <NA>
#> 154 ASN Board Review Course & Update
#> 155                             <NA>
#> 156                             <NA>
#> 157                             <NA>
#> 158                             <NA>
#> 159 ASN Board Review Course & Update
#> 160                             <NA>
#> 161 ASN Board Review Course & Update
#> 162                             <NA>
#> 163                             <NA>
#> 164                             <NA>
#> 165                             <NA>
#> 166                             <NA>
#> 167                             <NA>
#> 168                             <NA>
#> 169 ASN Board Review Course & Update
#> 170                             <NA>
#> 171 ASN Board Review Course & Update
#> 172 ASN Board Review Course & Update
#> 173                             <NA>
#> 174                             <NA>
#> 175                             <NA>
#> 176                             <NA>
#> 177                             <NA>
#> 178 ASN Board Review Course & Update
#> 179                             <NA>
#> 180                             <NA>
#> 181 ASN Board Review Course & Update
#> 182                             <NA>
#> 183 ASN Board Review Course & Update
#> 184 ASN Board Review Course & Update
#> 185                             <NA>
#> 186                             <NA>
#> 187 ASN Board Review Course & Update
#> 188 ASN Board Review Course & Update
#> 189                             <NA>
#> 190 ASN Board Review Course & Update
#> 191 ASN Board Review Course & Update
#> 192                             <NA>
#> 193                             <NA>
#> 194                             <NA>
#> 195 ASN Board Review Course & Update
#> 196 ASN Board Review Course & Update
#> 197                             <NA>
#> 198                             <NA>
#> 199                             <NA>
#> 200                             <NA>
#> 201                             <NA>
#> 202                             <NA>
#> 203 ASN Board Review Course & Update
#> 204                             <NA>
#> 205 ASN Board Review Course & Update
#> 206                             <NA>
#> 207                             <NA>
#> 208                             <NA>
#> 209                             <NA>
#> 210                             <NA>
#> 211                             <NA>
#> 212 ASN Board Review Course & Update
#> 213                             <NA>
#> 214 ASN Board Review Course & Update
#> 215                             <NA>
#> 216                             <NA>
#> 217                             <NA>
#> 218 ASN Board Review Course & Update
#> 219 ASN Board Review Course & Update
#> 220                             <NA>
#> 221                             <NA>
#> 222 ASN Board Review Course & Update
#> 223                             <NA>
#> 224                             <NA>
#> 225 ASN Board Review Course & Update
#> 226                             <NA>
#> 227 ASN Board Review Course & Update
#> 228 ASN Board Review Course & Update
#> 229 ASN Board Review Course & Update
#> 230                             <NA>
#> 231                             <NA>
#> 232 ASN Board Review Course & Update
#> 233 ASN Board Review Course & Update
#> 234 ASN Board Review Course & Update
#> 235                             <NA>
#> 236                             <NA>
#> 237                             <NA>
#> 238 ASN Board Review Course & Update
#> 239                             <NA>
#> 240                             <NA>
#> 241 ASN Board Review Course & Update
#> 242                             <NA>
#> 243 ASN Board Review Course & Update
#> 244                             <NA>
#> 245                             <NA>
#> 246 ASN Board Review Course & Update
#> 247                             <NA>
#> 248                             <NA>
#> 249                             <NA>
#> 250                             <NA>
#> 251 ASN Board Review Course & Update
#> 252                             <NA>
#> 253 ASN Board Review Course & Update
#> 254                             <NA>
#> 255                             <NA>
#> 256 ASN Board Review Course & Update
#> 257                             <NA>
#> 258 ASN Board Review Course & Update
#> 259 ASN Board Review Course & Update
#> 260                             <NA>
#> 261                             <NA>
#> 262                             <NA>
#> 263 ASN Board Review Course & Update
#> 264 ASN Board Review Course & Update
#> 265                             <NA>
#> 266 ASN Board Review Course & Update
#> 267 ASN Board Review Course & Update
#> 268                             <NA>
#> 269 ASN Board Review Course & Update
#> 270                             <NA>
#> 271                             <NA>
#> 272                             <NA>
#> 273 ASN Board Review Course & Update
#> 274                             <NA>
#> 275                             <NA>
#> 276                             <NA>
#> 277                             <NA>
#> 278                             <NA>
#> 279                             <NA>
#> 280 ASN Board Review Course & Update
#> 281                             <NA>
#> 282                             <NA>
#> 283 ASN Board Review Course & Update
#> 284                             <NA>
#> 285                             <NA>
#> 286                             <NA>
#> 287                             <NA>
#> 288 ASN Board Review Course & Update
#> 289                             <NA>
#> 290                             <NA>
#> 291                             <NA>
#> 292                             <NA>
#> 293 ASN Board Review Course & Update
#> 294 ASN Board Review Course & Update
#> 295                             <NA>
#> 296                             <NA>
#> 297                             <NA>
#> 298 ASN Board Review Course & Update
#> 299                             <NA>
#> 300                             <NA>
#> 301 ASN Board Review Course & Update
#> 302                             <NA>
#> 303 ASN Board Review Course & Update
#> 304                             <NA>
#> 305 ASN Board Review Course & Update
#> 306                             <NA>
#> 307 ASN Board Review Course & Update
#> 308 ASN Board Review Course & Update
#> 309 ASN Board Review Course & Update
#> 310                             <NA>
#> 311 ASN Board Review Course & Update
#> 312 ASN Board Review Course & Update
#> 313                             <NA>
#> 314                             <NA>
#> 315                             <NA>
#> 316 ASN Board Review Course & Update
#> 317 ASN Board Review Course & Update
#> 318                             <NA>
#> 319                             <NA>
#> 320 ASN Board Review Course & Update
#> 321 ASN Board Review Course & Update
#> 322 ASN Board Review Course & Update
#> 323                             <NA>
#> 324                             <NA>
#> 325                             <NA>
#> 326                             <NA>
#> 327 ASN Board Review Course & Update
#> 328                             <NA>
#> 329                             <NA>
#> 330 ASN Board Review Course & Update
#> 331                             <NA>
#> 332                             <NA>
#> 333                             <NA>
#> 334 ASN Board Review Course & Update
#> 335                             <NA>
#> 336                             <NA>
#> 337                             <NA>
#> 338                             <NA>
#> 339                             <NA>
#> 340 ASN Board Review Course & Update
#> 341                             <NA>
#> 342                             <NA>
#> 343                             <NA>
#> 344 ASN Board Review Course & Update
#> 345                             <NA>
#> 346                             <NA>
#> 347                             <NA>
#> 348 ASN Board Review Course & Update
#> 349                             <NA>
#> 350                             <NA>
#> 351 ASN Board Review Course & Update
#> 352                             <NA>
#> 353 ASN Board Review Course & Update
#> 354                             <NA>
#> 355 ASN Board Review Course & Update
#> 356                             <NA>
#> 357                             <NA>
#> 358                             <NA>
#> 359                             <NA>
#> 360                             <NA>
#> 361 ASN Board Review Course & Update
#> 362 ASN Board Review Course & Update
#> 363                             <NA>
#> 364 ASN Board Review Course & Update
#> 365                             <NA>
#> 366 ASN Board Review Course & Update
#> 367                             <NA>
#> 368 ASN Board Review Course & Update
#> 369                             <NA>
#> 370 ASN Board Review Course & Update
#> 371                             <NA>
#> 372 ASN Board Review Course & Update
#> 373                             <NA>
#> 374                             <NA>
#> 375 ASN Board Review Course & Update
#> 376                             <NA>
#> 377                             <NA>
#> 378                             <NA>
#> 379                             <NA>
#> 380                             <NA>
#> 381                             <NA>
#> 382                             <NA>
#> 383                             <NA>
#> 384                             <NA>
#> 385 ASN Board Review Course & Update
#> 386                             <NA>
#> 387 ASN Board Review Course & Update
#> 388 ASN Board Review Course & Update
#> 389                             <NA>
#> 390                             <NA>
#> 391                             <NA>
#> 392                             <NA>
#> 393 ASN Board Review Course & Update
#> 394                             <NA>
#> 395 ASN Board Review Course & Update
#> 396 ASN Board Review Course & Update
#> 397 ASN Board Review Course & Update
#> 398 ASN Board Review Course & Update
#> 399                             <NA>
#> 400                             <NA>
#>                                                      q65_4
#> 1                                                     <NA>
#> 2                                                     <NA>
#> 3                                                     <NA>
#> 4                                                     <NA>
#> 5                                                     <NA>
#> 6                                                     <NA>
#> 7                                                     <NA>
#> 8                                                     <NA>
#> 9                                                     <NA>
#> 10                                                    <NA>
#> 11                                                    <NA>
#> 12                                                    <NA>
#> 13                                                    <NA>
#> 14                                                    <NA>
#> 15                                                    <NA>
#> 16                                                    <NA>
#> 17                                                    <NA>
#> 18                                                    <NA>
#> 19                                                    <NA>
#> 20                                                    <NA>
#> 21  Oakstone/Brigham Intensive Review of Nephrology Course
#> 22                                                    <NA>
#> 23                                                    <NA>
#> 24                                                    <NA>
#> 25                                                    <NA>
#> 26                                                    <NA>
#> 27                                                    <NA>
#> 28                                                    <NA>
#> 29                                                    <NA>
#> 30                                                    <NA>
#> 31                                                    <NA>
#> 32                                                    <NA>
#> 33                                                    <NA>
#> 34                                                    <NA>
#> 35                                                    <NA>
#> 36                                                    <NA>
#> 37                                                    <NA>
#> 38                                                    <NA>
#> 39                                                    <NA>
#> 40                                                    <NA>
#> 41                                                    <NA>
#> 42                                                    <NA>
#> 43                                                    <NA>
#> 44                                                    <NA>
#> 45                                                    <NA>
#> 46                                                    <NA>
#> 47                                                    <NA>
#> 48                                                    <NA>
#> 49                                                    <NA>
#> 50                                                    <NA>
#> 51                                                    <NA>
#> 52                                                    <NA>
#> 53                                                    <NA>
#> 54                                                    <NA>
#> 55                                                    <NA>
#> 56                                                    <NA>
#> 57                                                    <NA>
#> 58                                                    <NA>
#> 59                                                    <NA>
#> 60                                                    <NA>
#> 61                                                    <NA>
#> 62                                                    <NA>
#> 63                                                    <NA>
#> 64                                                    <NA>
#> 65                                                    <NA>
#> 66                                                    <NA>
#> 67                                                    <NA>
#> 68                                                    <NA>
#> 69                                                    <NA>
#> 70                                                    <NA>
#> 71                                                    <NA>
#> 72                                                    <NA>
#> 73                                                    <NA>
#> 74                                                    <NA>
#> 75                                                    <NA>
#> 76                                                    <NA>
#> 77                                                    <NA>
#> 78                                                    <NA>
#> 79                                                    <NA>
#> 80                                                    <NA>
#> 81                                                    <NA>
#> 82                                                    <NA>
#> 83                                                    <NA>
#> 84                                                    <NA>
#> 85                                                    <NA>
#> 86                                                    <NA>
#> 87                                                    <NA>
#> 88                                                    <NA>
#> 89                                                    <NA>
#> 90                                                    <NA>
#> 91                                                    <NA>
#> 92                                                    <NA>
#> 93  Oakstone/Brigham Intensive Review of Nephrology Course
#> 94                                                    <NA>
#> 95                                                    <NA>
#> 96                                                    <NA>
#> 97                                                    <NA>
#> 98                                                    <NA>
#> 99                                                    <NA>
#> 100                                                   <NA>
#> 101                                                   <NA>
#> 102 Oakstone/Brigham Intensive Review of Nephrology Course
#> 103                                                   <NA>
#> 104                                                   <NA>
#> 105                                                   <NA>
#> 106                                                   <NA>
#> 107 Oakstone/Brigham Intensive Review of Nephrology Course
#> 108 Oakstone/Brigham Intensive Review of Nephrology Course
#> 109                                                   <NA>
#> 110                                                   <NA>
#> 111                                                   <NA>
#> 112                                                   <NA>
#> 113                                                   <NA>
#> 114                                                   <NA>
#> 115                                                   <NA>
#> 116                                                   <NA>
#> 117                                                   <NA>
#> 118                                                   <NA>
#> 119                                                   <NA>
#> 120                                                   <NA>
#> 121                                                   <NA>
#> 122                                                   <NA>
#> 123                                                   <NA>
#> 124                                                   <NA>
#> 125                                                   <NA>
#> 126                                                   <NA>
#> 127                                                   <NA>
#> 128 Oakstone/Brigham Intensive Review of Nephrology Course
#> 129                                                   <NA>
#> 130                                                   <NA>
#> 131                                                   <NA>
#> 132                                                   <NA>
#> 133                                                   <NA>
#> 134                                                   <NA>
#> 135                                                   <NA>
#> 136                                                   <NA>
#> 137 Oakstone/Brigham Intensive Review of Nephrology Course
#> 138                                                   <NA>
#> 139 Oakstone/Brigham Intensive Review of Nephrology Course
#> 140                                                   <NA>
#> 141                                                   <NA>
#> 142                                                   <NA>
#> 143                                                   <NA>
#> 144                                                   <NA>
#> 145                                                   <NA>
#> 146                                                   <NA>
#> 147                                                   <NA>
#> 148                                                   <NA>
#> 149 Oakstone/Brigham Intensive Review of Nephrology Course
#> 150                                                   <NA>
#> 151                                                   <NA>
#> 152                                                   <NA>
#> 153                                                   <NA>
#> 154                                                   <NA>
#> 155                                                   <NA>
#> 156                                                   <NA>
#> 157                                                   <NA>
#> 158                                                   <NA>
#> 159                                                   <NA>
#> 160 Oakstone/Brigham Intensive Review of Nephrology Course
#> 161                                                   <NA>
#> 162                                                   <NA>
#> 163                                                   <NA>
#> 164                                                   <NA>
#> 165                                                   <NA>
#> 166                                                   <NA>
#> 167                                                   <NA>
#> 168                                                   <NA>
#> 169                                                   <NA>
#> 170                                                   <NA>
#> 171                                                   <NA>
#> 172                                                   <NA>
#> 173                                                   <NA>
#> 174                                                   <NA>
#> 175                                                   <NA>
#> 176                                                   <NA>
#> 177                                                   <NA>
#> 178                                                   <NA>
#> 179                                                   <NA>
#> 180 Oakstone/Brigham Intensive Review of Nephrology Course
#> 181                                                   <NA>
#> 182                                                   <NA>
#> 183                                                   <NA>
#> 184                                                   <NA>
#> 185                                                   <NA>
#> 186                                                   <NA>
#> 187                                                   <NA>
#> 188                                                   <NA>
#> 189                                                   <NA>
#> 190                                                   <NA>
#> 191                                                   <NA>
#> 192                                                   <NA>
#> 193                                                   <NA>
#> 194                                                   <NA>
#> 195                                                   <NA>
#> 196                                                   <NA>
#> 197 Oakstone/Brigham Intensive Review of Nephrology Course
#> 198                                                   <NA>
#> 199                                                   <NA>
#> 200                                                   <NA>
#> 201 Oakstone/Brigham Intensive Review of Nephrology Course
#> 202                                                   <NA>
#> 203                                                   <NA>
#> 204                                                   <NA>
#> 205                                                   <NA>
#> 206                                                   <NA>
#> 207                                                   <NA>
#> 208                                                   <NA>
#> 209                                                   <NA>
#> 210                                                   <NA>
#> 211                                                   <NA>
#> 212                                                   <NA>
#> 213                                                   <NA>
#> 214                                                   <NA>
#> 215                                                   <NA>
#> 216                                                   <NA>
#> 217                                                   <NA>
#> 218                                                   <NA>
#> 219                                                   <NA>
#> 220                                                   <NA>
#> 221                                                   <NA>
#> 222                                                   <NA>
#> 223                                                   <NA>
#> 224                                                   <NA>
#> 225                                                   <NA>
#> 226                                                   <NA>
#> 227                                                   <NA>
#> 228                                                   <NA>
#> 229                                                   <NA>
#> 230                                                   <NA>
#> 231                                                   <NA>
#> 232                                                   <NA>
#> 233                                                   <NA>
#> 234                                                   <NA>
#> 235                                                   <NA>
#> 236                                                   <NA>
#> 237                                                   <NA>
#> 238                                                   <NA>
#> 239                                                   <NA>
#> 240                                                   <NA>
#> 241                                                   <NA>
#> 242                                                   <NA>
#> 243                                                   <NA>
#> 244                                                   <NA>
#> 245                                                   <NA>
#> 246                                                   <NA>
#> 247                                                   <NA>
#> 248                                                   <NA>
#> 249                                                   <NA>
#> 250 Oakstone/Brigham Intensive Review of Nephrology Course
#> 251                                                   <NA>
#> 252                                                   <NA>
#> 253                                                   <NA>
#> 254                                                   <NA>
#> 255                                                   <NA>
#> 256 Oakstone/Brigham Intensive Review of Nephrology Course
#> 257                                                   <NA>
#> 258                                                   <NA>
#> 259                                                   <NA>
#> 260                                                   <NA>
#> 261                                                   <NA>
#> 262                                                   <NA>
#> 263                                                   <NA>
#> 264                                                   <NA>
#> 265                                                   <NA>
#> 266                                                   <NA>
#> 267                                                   <NA>
#> 268                                                   <NA>
#> 269                                                   <NA>
#> 270 Oakstone/Brigham Intensive Review of Nephrology Course
#> 271                                                   <NA>
#> 272                                                   <NA>
#> 273                                                   <NA>
#> 274 Oakstone/Brigham Intensive Review of Nephrology Course
#> 275                                                   <NA>
#> 276                                                   <NA>
#> 277                                                   <NA>
#> 278                                                   <NA>
#> 279                                                   <NA>
#> 280                                                   <NA>
#> 281                                                   <NA>
#> 282                                                   <NA>
#> 283                                                   <NA>
#> 284                                                   <NA>
#> 285                                                   <NA>
#> 286                                                   <NA>
#> 287                                                   <NA>
#> 288 Oakstone/Brigham Intensive Review of Nephrology Course
#> 289                                                   <NA>
#> 290                                                   <NA>
#> 291                                                   <NA>
#> 292                                                   <NA>
#> 293                                                   <NA>
#> 294                                                   <NA>
#> 295                                                   <NA>
#> 296                                                   <NA>
#> 297                                                   <NA>
#> 298                                                   <NA>
#> 299                                                   <NA>
#> 300                                                   <NA>
#> 301 Oakstone/Brigham Intensive Review of Nephrology Course
#> 302                                                   <NA>
#> 303                                                   <NA>
#> 304                                                   <NA>
#> 305                                                   <NA>
#> 306                                                   <NA>
#> 307                                                   <NA>
#> 308                                                   <NA>
#> 309                                                   <NA>
#> 310                                                   <NA>
#> 311                                                   <NA>
#> 312                                                   <NA>
#> 313                                                   <NA>
#> 314                                                   <NA>
#> 315                                                   <NA>
#> 316                                                   <NA>
#> 317                                                   <NA>
#> 318 Oakstone/Brigham Intensive Review of Nephrology Course
#> 319                                                   <NA>
#> 320                                                   <NA>
#> 321                                                   <NA>
#> 322                                                   <NA>
#> 323                                                   <NA>
#> 324                                                   <NA>
#> 325                                                   <NA>
#> 326                                                   <NA>
#> 327                                                   <NA>
#> 328                                                   <NA>
#> 329 Oakstone/Brigham Intensive Review of Nephrology Course
#> 330                                                   <NA>
#> 331                                                   <NA>
#> 332                                                   <NA>
#> 333                                                   <NA>
#> 334                                                   <NA>
#> 335                                                   <NA>
#> 336                                                   <NA>
#> 337                                                   <NA>
#> 338                                                   <NA>
#> 339                                                   <NA>
#> 340                                                   <NA>
#> 341                                                   <NA>
#> 342                                                   <NA>
#> 343                                                   <NA>
#> 344                                                   <NA>
#> 345 Oakstone/Brigham Intensive Review of Nephrology Course
#> 346                                                   <NA>
#> 347                                                   <NA>
#> 348                                                   <NA>
#> 349                                                   <NA>
#> 350                                                   <NA>
#> 351                                                   <NA>
#> 352                                                   <NA>
#> 353                                                   <NA>
#> 354                                                   <NA>
#> 355                                                   <NA>
#> 356                                                   <NA>
#> 357                                                   <NA>
#> 358                                                   <NA>
#> 359                                                   <NA>
#> 360                                                   <NA>
#> 361                                                   <NA>
#> 362                                                   <NA>
#> 363                                                   <NA>
#> 364                                                   <NA>
#> 365                                                   <NA>
#> 366                                                   <NA>
#> 367                                                   <NA>
#> 368                                                   <NA>
#> 369                                                   <NA>
#> 370 Oakstone/Brigham Intensive Review of Nephrology Course
#> 371                                                   <NA>
#> 372                                                   <NA>
#> 373                                                   <NA>
#> 374                                                   <NA>
#> 375                                                   <NA>
#> 376                                                   <NA>
#> 377                                                   <NA>
#> 378                                                   <NA>
#> 379                                                   <NA>
#> 380                                                   <NA>
#> 381                                                   <NA>
#> 382                                                   <NA>
#> 383                                                   <NA>
#> 384                                                   <NA>
#> 385                                                   <NA>
#> 386                                                   <NA>
#> 387                                                   <NA>
#> 388                                                   <NA>
#> 389                                                   <NA>
#> 390                                                   <NA>
#> 391                                                   <NA>
#> 392                                                   <NA>
#> 393                                                   <NA>
#> 394                                                   <NA>
#> 395                                                   <NA>
#> 396                                                   <NA>
#> 397                                                   <NA>
#> 398                                                   <NA>
#> 399                                                   <NA>
#> 400                                                   <NA>
#>                         q65_5                              q65_6
#> 1                        <NA>                               <NA>
#> 2                        <NA>                               <NA>
#> 3                        <NA>                               <NA>
#> 4                        <NA>                               <NA>
#> 5                        <NA>                               <NA>
#> 6                        <NA>                               <NA>
#> 7                        <NA>                               <NA>
#> 8                        <NA>                               <NA>
#> 9                        <NA>                               <NA>
#> 10                       <NA>                               <NA>
#> 11                       <NA>                               <NA>
#> 12                       <NA>                               <NA>
#> 13                       <NA>                               <NA>
#> 14                       <NA>                               <NA>
#> 15                       <NA>                               <NA>
#> 16                       <NA>                               <NA>
#> 17                       <NA>                               <NA>
#> 18                       <NA>                               <NA>
#> 19                       <NA>                               <NA>
#> 20                       <NA>                               <NA>
#> 21                       <NA>                               <NA>
#> 22                       <NA>                               <NA>
#> 23                       <NA>                               <NA>
#> 24                       <NA>                               <NA>
#> 25                       <NA>                               <NA>
#> 26                       <NA>                               <NA>
#> 27  Other board review course                               <NA>
#> 28                       <NA>                               <NA>
#> 29                       <NA>                               <NA>
#> 30                       <NA>                               <NA>
#> 31                       <NA>                               <NA>
#> 32  Other board review course                               <NA>
#> 33                       <NA>                               <NA>
#> 34                       <NA>                               <NA>
#> 35                       <NA>                               <NA>
#> 36                       <NA>                               <NA>
#> 37                       <NA>                               <NA>
#> 38                       <NA>                               <NA>
#> 39                       <NA> Other resource(s) (please specify)
#> 40                       <NA>                               <NA>
#> 41                       <NA>                               <NA>
#> 42                       <NA>                               <NA>
#> 43                       <NA>                               <NA>
#> 44                       <NA>                               <NA>
#> 45                       <NA>                               <NA>
#> 46                       <NA>                               <NA>
#> 47                       <NA>                               <NA>
#> 48                       <NA>                               <NA>
#> 49                       <NA>                               <NA>
#> 50                       <NA>                               <NA>
#> 51                       <NA> Other resource(s) (please specify)
#> 52                       <NA>                               <NA>
#> 53  Other board review course                               <NA>
#> 54                       <NA>                               <NA>
#> 55                       <NA>                               <NA>
#> 56                       <NA>                               <NA>
#> 57                       <NA>                               <NA>
#> 58                       <NA>                               <NA>
#> 59                       <NA>                               <NA>
#> 60  Other board review course                               <NA>
#> 61                       <NA>                               <NA>
#> 62                       <NA>                               <NA>
#> 63                       <NA>                               <NA>
#> 64                       <NA>                               <NA>
#> 65                       <NA>                               <NA>
#> 66                       <NA>                               <NA>
#> 67                       <NA>                               <NA>
#> 68                       <NA>                               <NA>
#> 69                       <NA>                               <NA>
#> 70                       <NA>                               <NA>
#> 71                       <NA>                               <NA>
#> 72                       <NA>                               <NA>
#> 73                       <NA>                               <NA>
#> 74                       <NA>                               <NA>
#> 75                       <NA>                               <NA>
#> 76                       <NA>                               <NA>
#> 77                       <NA>                               <NA>
#> 78                       <NA>                               <NA>
#> 79                       <NA>                               <NA>
#> 80                       <NA>                               <NA>
#> 81                       <NA> Other resource(s) (please specify)
#> 82                       <NA> Other resource(s) (please specify)
#> 83                       <NA>                               <NA>
#> 84                       <NA>                               <NA>
#> 85                       <NA>                               <NA>
#> 86                       <NA>                               <NA>
#> 87                       <NA>                               <NA>
#> 88                       <NA>                               <NA>
#> 89                       <NA>                               <NA>
#> 90                       <NA>                               <NA>
#> 91                       <NA>                               <NA>
#> 92                       <NA>                               <NA>
#> 93                       <NA>                               <NA>
#> 94                       <NA>                               <NA>
#> 95                       <NA>                               <NA>
#> 96                       <NA>                               <NA>
#> 97                       <NA>                               <NA>
#> 98                       <NA>                               <NA>
#> 99                       <NA>                               <NA>
#> 100                      <NA>                               <NA>
#> 101                      <NA>                               <NA>
#> 102                      <NA>                               <NA>
#> 103                      <NA>                               <NA>
#> 104                      <NA>                               <NA>
#> 105                      <NA>                               <NA>
#> 106                      <NA>                               <NA>
#> 107                      <NA>                               <NA>
#> 108                      <NA>                               <NA>
#> 109 Other board review course                               <NA>
#> 110                      <NA>                               <NA>
#> 111                      <NA>                               <NA>
#> 112                      <NA>                               <NA>
#> 113                      <NA>                               <NA>
#> 114                      <NA>                               <NA>
#> 115                      <NA>                               <NA>
#> 116                      <NA>                               <NA>
#> 117                      <NA>                               <NA>
#> 118                      <NA>                               <NA>
#> 119                      <NA>                               <NA>
#> 120                      <NA>                               <NA>
#> 121                      <NA>                               <NA>
#> 122                      <NA>                               <NA>
#> 123                      <NA>                               <NA>
#> 124 Other board review course                               <NA>
#> 125                      <NA>                               <NA>
#> 126                      <NA>                               <NA>
#> 127                      <NA>                               <NA>
#> 128                      <NA>                               <NA>
#> 129                      <NA> Other resource(s) (please specify)
#> 130                      <NA>                               <NA>
#> 131                      <NA> Other resource(s) (please specify)
#> 132                      <NA>                               <NA>
#> 133                      <NA>                               <NA>
#> 134                      <NA>                               <NA>
#> 135                      <NA> Other resource(s) (please specify)
#> 136                      <NA>                               <NA>
#> 137                      <NA>                               <NA>
#> 138                      <NA>                               <NA>
#> 139                      <NA>                               <NA>
#> 140                      <NA>                               <NA>
#> 141                      <NA>                               <NA>
#> 142                      <NA>                               <NA>
#> 143                      <NA>                               <NA>
#> 144                      <NA>                               <NA>
#> 145                      <NA>                               <NA>
#> 146                      <NA>                               <NA>
#> 147                      <NA>                               <NA>
#> 148                      <NA>                               <NA>
#> 149                      <NA>                               <NA>
#> 150                      <NA>                               <NA>
#> 151                      <NA>                               <NA>
#> 152                      <NA>                               <NA>
#> 153                      <NA>                               <NA>
#> 154                      <NA>                               <NA>
#> 155                      <NA>                               <NA>
#> 156                      <NA>                               <NA>
#> 157                      <NA> Other resource(s) (please specify)
#> 158                      <NA>                               <NA>
#> 159                      <NA>                               <NA>
#> 160                      <NA>                               <NA>
#> 161                      <NA>                               <NA>
#> 162                      <NA>                               <NA>
#> 163                      <NA>                               <NA>
#> 164                      <NA>                               <NA>
#> 165                      <NA>                               <NA>
#> 166                      <NA>                               <NA>
#> 167                      <NA>                               <NA>
#> 168                      <NA>                               <NA>
#> 169                      <NA>                               <NA>
#> 170                      <NA>                               <NA>
#> 171                      <NA>                               <NA>
#> 172                      <NA>                               <NA>
#> 173                      <NA>                               <NA>
#> 174                      <NA>                               <NA>
#> 175                      <NA>                               <NA>
#> 176                      <NA>                               <NA>
#> 177                      <NA>                               <NA>
#> 178                      <NA>                               <NA>
#> 179                      <NA>                               <NA>
#> 180                      <NA>                               <NA>
#> 181                      <NA>                               <NA>
#> 182                      <NA>                               <NA>
#> 183                      <NA>                               <NA>
#> 184                      <NA>                               <NA>
#> 185                      <NA>                               <NA>
#> 186                      <NA>                               <NA>
#> 187                      <NA>                               <NA>
#> 188                      <NA>                               <NA>
#> 189                      <NA>                               <NA>
#> 190                      <NA>                               <NA>
#> 191                      <NA>                               <NA>
#> 192                      <NA>                               <NA>
#> 193                      <NA>                               <NA>
#> 194                      <NA>                               <NA>
#> 195                      <NA>                               <NA>
#> 196                      <NA>                               <NA>
#> 197                      <NA>                               <NA>
#> 198                      <NA>                               <NA>
#> 199                      <NA>                               <NA>
#> 200                      <NA>                               <NA>
#> 201                      <NA>                               <NA>
#> 202                      <NA>                               <NA>
#> 203                      <NA>                               <NA>
#> 204                      <NA>                               <NA>
#> 205                      <NA>                               <NA>
#> 206                      <NA>                               <NA>
#> 207                      <NA>                               <NA>
#> 208                      <NA>                               <NA>
#> 209                      <NA>                               <NA>
#> 210                      <NA>                               <NA>
#> 211                      <NA>                               <NA>
#> 212                      <NA>                               <NA>
#> 213                      <NA>                               <NA>
#> 214                      <NA>                               <NA>
#> 215                      <NA>                               <NA>
#> 216                      <NA>                               <NA>
#> 217                      <NA>                               <NA>
#> 218                      <NA>                               <NA>
#> 219                      <NA>                               <NA>
#> 220                      <NA>                               <NA>
#> 221                      <NA>                               <NA>
#> 222                      <NA>                               <NA>
#> 223                      <NA>                               <NA>
#> 224                      <NA>                               <NA>
#> 225                      <NA>                               <NA>
#> 226                      <NA>                               <NA>
#> 227                      <NA>                               <NA>
#> 228                      <NA>                               <NA>
#> 229                      <NA>                               <NA>
#> 230                      <NA>                               <NA>
#> 231                      <NA>                               <NA>
#> 232                      <NA>                               <NA>
#> 233                      <NA>                               <NA>
#> 234                      <NA>                               <NA>
#> 235                      <NA>                               <NA>
#> 236                      <NA>                               <NA>
#> 237                      <NA>                               <NA>
#> 238                      <NA>                               <NA>
#> 239                      <NA>                               <NA>
#> 240                      <NA>                               <NA>
#> 241                      <NA>                               <NA>
#> 242                      <NA>                               <NA>
#> 243                      <NA>                               <NA>
#> 244                      <NA>                               <NA>
#> 245                      <NA>                               <NA>
#> 246                      <NA>                               <NA>
#> 247                      <NA>                               <NA>
#> 248                      <NA>                               <NA>
#> 249                      <NA>                               <NA>
#> 250                      <NA>                               <NA>
#> 251 Other board review course                               <NA>
#> 252                      <NA>                               <NA>
#> 253                      <NA>                               <NA>
#> 254                      <NA>                               <NA>
#> 255                      <NA>                               <NA>
#> 256 Other board review course                               <NA>
#> 257 Other board review course                               <NA>
#> 258                      <NA>                               <NA>
#> 259                      <NA>                               <NA>
#> 260                      <NA>                               <NA>
#> 261                      <NA>                               <NA>
#> 262                      <NA>                               <NA>
#> 263                      <NA>                               <NA>
#> 264                      <NA>                               <NA>
#> 265                      <NA>                               <NA>
#> 266                      <NA>                               <NA>
#> 267                      <NA>                               <NA>
#> 268 Other board review course                               <NA>
#> 269                      <NA>                               <NA>
#> 270                      <NA>                               <NA>
#> 271                      <NA>                               <NA>
#> 272                      <NA>                               <NA>
#> 273                      <NA>                               <NA>
#> 274                      <NA>                               <NA>
#> 275                      <NA>                               <NA>
#> 276                      <NA>                               <NA>
#> 277                      <NA>                               <NA>
#> 278                      <NA>                               <NA>
#> 279                      <NA>                               <NA>
#> 280                      <NA>                               <NA>
#> 281                      <NA>                               <NA>
#> 282                      <NA>                               <NA>
#> 283                      <NA>                               <NA>
#> 284                      <NA>                               <NA>
#> 285                      <NA>                               <NA>
#> 286                      <NA>                               <NA>
#> 287                      <NA>                               <NA>
#> 288                      <NA>                               <NA>
#> 289                      <NA>                               <NA>
#> 290                      <NA>                               <NA>
#> 291                      <NA>                               <NA>
#> 292                      <NA>                               <NA>
#> 293                      <NA>                               <NA>
#> 294                      <NA>                               <NA>
#> 295                      <NA>                               <NA>
#> 296                      <NA>                               <NA>
#> 297                      <NA>                               <NA>
#> 298                      <NA>                               <NA>
#> 299                      <NA>                               <NA>
#> 300                      <NA>                               <NA>
#> 301                      <NA>                               <NA>
#> 302                      <NA>                               <NA>
#> 303                      <NA>                               <NA>
#> 304                      <NA>                               <NA>
#> 305                      <NA>                               <NA>
#> 306                      <NA>                               <NA>
#> 307                      <NA>                               <NA>
#> 308                      <NA>                               <NA>
#> 309                      <NA>                               <NA>
#> 310                      <NA>                               <NA>
#> 311                      <NA>                               <NA>
#> 312                      <NA>                               <NA>
#> 313                      <NA>                               <NA>
#> 314                      <NA>                               <NA>
#> 315                      <NA>                               <NA>
#> 316                      <NA>                               <NA>
#> 317                      <NA>                               <NA>
#> 318                      <NA>                               <NA>
#> 319                      <NA>                               <NA>
#> 320                      <NA> Other resource(s) (please specify)
#> 321                      <NA>                               <NA>
#> 322                      <NA>                               <NA>
#> 323                      <NA>                               <NA>
#> 324                      <NA>                               <NA>
#> 325                      <NA>                               <NA>
#> 326                      <NA>                               <NA>
#> 327                      <NA>                               <NA>
#> 328                      <NA>                               <NA>
#> 329                      <NA>                               <NA>
#> 330                      <NA>                               <NA>
#> 331                      <NA>                               <NA>
#> 332                      <NA>                               <NA>
#> 333                      <NA>                               <NA>
#> 334                      <NA>                               <NA>
#> 335                      <NA>                               <NA>
#> 336                      <NA>                               <NA>
#> 337                      <NA>                               <NA>
#> 338                      <NA>                               <NA>
#> 339                      <NA>                               <NA>
#> 340                      <NA>                               <NA>
#> 341 Other board review course                               <NA>
#> 342                      <NA>                               <NA>
#> 343                      <NA>                               <NA>
#> 344                      <NA>                               <NA>
#> 345                      <NA>                               <NA>
#> 346 Other board review course                               <NA>
#> 347                      <NA>                               <NA>
#> 348                      <NA>                               <NA>
#> 349                      <NA>                               <NA>
#> 350                      <NA>                               <NA>
#> 351                      <NA> Other resource(s) (please specify)
#> 352                      <NA>                               <NA>
#> 353                      <NA>                               <NA>
#> 354                      <NA>                               <NA>
#> 355                      <NA>                               <NA>
#> 356                      <NA>                               <NA>
#> 357                      <NA>                               <NA>
#> 358                      <NA>                               <NA>
#> 359                      <NA>                               <NA>
#> 360                      <NA>                               <NA>
#> 361                      <NA>                               <NA>
#> 362                      <NA>                               <NA>
#> 363                      <NA>                               <NA>
#> 364                      <NA>                               <NA>
#> 365                      <NA>                               <NA>
#> 366                      <NA>                               <NA>
#> 367                      <NA>                               <NA>
#> 368                      <NA>                               <NA>
#> 369                      <NA>                               <NA>
#> 370                      <NA>                               <NA>
#> 371                      <NA>                               <NA>
#> 372                      <NA> Other resource(s) (please specify)
#> 373                      <NA>                               <NA>
#> 374                      <NA>                               <NA>
#> 375                      <NA>                               <NA>
#> 376                      <NA>                               <NA>
#> 377                      <NA>                               <NA>
#> 378                      <NA>                               <NA>
#> 379                      <NA>                               <NA>
#> 380                      <NA>                               <NA>
#> 381                      <NA>                               <NA>
#> 382                      <NA>                               <NA>
#> 383                      <NA>                               <NA>
#> 384                      <NA>                               <NA>
#> 385                      <NA>                               <NA>
#> 386                      <NA>                               <NA>
#> 387                      <NA>                               <NA>
#> 388                      <NA>                               <NA>
#> 389                      <NA>                               <NA>
#> 390                      <NA>                               <NA>
#> 391                      <NA>                               <NA>
#> 392                      <NA>                               <NA>
#> 393                      <NA>                               <NA>
#> 394                      <NA>                               <NA>
#> 395                      <NA>                               <NA>
#> 396                      <NA>                               <NA>
#> 397                      <NA>                               <NA>
#> 398                      <NA>                               <NA>
#> 399                      <NA>                               <NA>
#> 400                      <NA>                               <NA>
#>                                            q65_6_text
#> 1                                                <NA>
#> 2                                                <NA>
#> 3                                                <NA>
#> 4                                                <NA>
#> 5                                                <NA>
#> 6                                                <NA>
#> 7                                                <NA>
#> 8                                                <NA>
#> 9                                                <NA>
#> 10                                               <NA>
#> 11                                               <NA>
#> 12                                               <NA>
#> 13                                               <NA>
#> 14                                               <NA>
#> 15                                               <NA>
#> 16                                               <NA>
#> 17                                               <NA>
#> 18                                               <NA>
#> 19                                               <NA>
#> 20                                               <NA>
#> 21                                               <NA>
#> 22                                               <NA>
#> 23                                               <NA>
#> 24                                               <NA>
#> 25                                               <NA>
#> 26                                               <NA>
#> 27                                               <NA>
#> 28                                               <NA>
#> 29                                               <NA>
#> 30                                               <NA>
#> 31                                               <NA>
#> 32                                               <NA>
#> 33                                               <NA>
#> 34                                               <NA>
#> 35                                               <NA>
#> 36                                               <NA>
#> 37                                               <NA>
#> 38                                               <NA>
#> 39                                               <NA>
#> 40                                               <NA>
#> 41                                               <NA>
#> 42                                               <NA>
#> 43                                               <NA>
#> 44                                               <NA>
#> 45                                               <NA>
#> 46                                               <NA>
#> 47                                               <NA>
#> 48                                               <NA>
#> 49                                               <NA>
#> 50                                               <NA>
#> 51                                               <NA>
#> 52                                               <NA>
#> 53                                               <NA>
#> 54                                               <NA>
#> 55                                               <NA>
#> 56                                               <NA>
#> 57                                               <NA>
#> 58                                               <NA>
#> 59                                               <NA>
#> 60                                               <NA>
#> 61                                               <NA>
#> 62                                               <NA>
#> 63                                               <NA>
#> 64                                               <NA>
#> 65                                               <NA>
#> 66                                               <NA>
#> 67                                               <NA>
#> 68                                               <NA>
#> 69                                               <NA>
#> 70                                               <NA>
#> 71                                               <NA>
#> 72                                               <NA>
#> 73                                               <NA>
#> 74                                               <NA>
#> 75                                               <NA>
#> 76                                               <NA>
#> 77                                               <NA>
#> 78                                               <NA>
#> 79                                               <NA>
#> 80                                               <NA>
#> 81                                               <NA>
#> 82                                               <NA>
#> 83                                               <NA>
#> 84                                               <NA>
#> 85                                               <NA>
#> 86                                               <NA>
#> 87                                               <NA>
#> 88                                               <NA>
#> 89                                               <NA>
#> 90                                               <NA>
#> 91                                               <NA>
#> 92                                               <NA>
#> 93                                               <NA>
#> 94                                               <NA>
#> 95                                               <NA>
#> 96                                               <NA>
#> 97                                               <NA>
#> 98                                               <NA>
#> 99                                               <NA>
#> 100                                              <NA>
#> 101                                              <NA>
#> 102                                              <NA>
#> 103                                              <NA>
#> 104                                              <NA>
#> 105                                              <NA>
#> 106                                              <NA>
#> 107                                              <NA>
#> 108                                              <NA>
#> 109                                              <NA>
#> 110                                              <NA>
#> 111                                              <NA>
#> 112                                              <NA>
#> 113                                              <NA>
#> 114                                              <NA>
#> 115                                              <NA>
#> 116                                              <NA>
#> 117                                              <NA>
#> 118                                              <NA>
#> 119                                              <NA>
#> 120                                              <NA>
#> 121                                              <NA>
#> 122                                              <NA>
#> 123                                              <NA>
#> 124                                              <NA>
#> 125                                              <NA>
#> 126                                              <NA>
#> 127                                              <NA>
#> 128                                              <NA>
#> 129                                              <NA>
#> 130                                              <NA>
#> 131                                              <NA>
#> 132                                              <NA>
#> 133                                              <NA>
#> 134                                              <NA>
#> 135                                              <NA>
#> 136                                              <NA>
#> 137                                              <NA>
#> 138                                              <NA>
#> 139                                              <NA>
#> 140                                              <NA>
#> 141                                              <NA>
#> 142                                              <NA>
#> 143                                              <NA>
#> 144                                              <NA>
#> 145                                              <NA>
#> 146                                              <NA>
#> 147                                              <NA>
#> 148                                              <NA>
#> 149                                              <NA>
#> 150                                              <NA>
#> 151                                              <NA>
#> 152                                              <NA>
#> 153                                              <NA>
#> 154                                              <NA>
#> 155                                              <NA>
#> 156                                              <NA>
#> 157                                              <NA>
#> 158                                              <NA>
#> 159                                              <NA>
#> 160                                              <NA>
#> 161                                              <NA>
#> 162                                              <NA>
#> 163                                              <NA>
#> 164                                              <NA>
#> 165                                              <NA>
#> 166                                              <NA>
#> 167                                              <NA>
#> 168                                              <NA>
#> 169                                              <NA>
#> 170                                              <NA>
#> 171                                              <NA>
#> 172                                              <NA>
#> 173                                              <NA>
#> 174                                              <NA>
#> 175                                              <NA>
#> 176                                              <NA>
#> 177                                              <NA>
#> 178                                              <NA>
#> 179                                              <NA>
#> 180                                              <NA>
#> 181                                              <NA>
#> 182                                              <NA>
#> 183                                              <NA>
#> 184                                              <NA>
#> 185                                              <NA>
#> 186                                              <NA>
#> 187                                              <NA>
#> 188                                              <NA>
#> 189                                              <NA>
#> 190                                              <NA>
#> 191                                              <NA>
#> 192                                              <NA>
#> 193                                              <NA>
#> 194                                              <NA>
#> 195                                              <NA>
#> 196                                              <NA>
#> 197                                              <NA>
#> 198                                              <NA>
#> 199                                              <NA>
#> 200                                              <NA>
#> 201                                              <NA>
#> 202                                              <NA>
#> 203                                              <NA>
#> 204                                              <NA>
#> 205                                              <NA>
#> 206                                              <NA>
#> 207                                              <NA>
#> 208                                              <NA>
#> 209                                              <NA>
#> 210                                              <NA>
#> 211                                              <NA>
#> 212                                              <NA>
#> 213                                              <NA>
#> 214                                              <NA>
#> 215                                              <NA>
#> 216                                              <NA>
#> 217                                              <NA>
#> 218                                              <NA>
#> 219                                              <NA>
#> 220                                              <NA>
#> 221                                              <NA>
#> 222                                              <NA>
#> 223                                              <NA>
#> 224                                              <NA>
#> 225                                              <NA>
#> 226                                              <NA>
#> 227                                              <NA>
#> 228                                              <NA>
#> 229                                              <NA>
#> 230                                              <NA>
#> 231                                              <NA>
#> 232                                              <NA>
#> 233                                              <NA>
#> 234                                              <NA>
#> 235                                              <NA>
#> 236                                         Textbooks
#> 237                                              <NA>
#> 238                                              <NA>
#> 239                                              <NA>
#> 240                                              <NA>
#> 241                                              <NA>
#> 242                                              <NA>
#> 243                                              <NA>
#> 244                                              <NA>
#> 245                                              <NA>
#> 246                                              <NA>
#> 247                                              <NA>
#> 248                                              <NA>
#> 249                                              <NA>
#> 250                                              <NA>
#> 251 Washington Manual Nephrology Subspecialty Consult
#> 252                                              <NA>
#> 253                                              <NA>
#> 254                                              <NA>
#> 255                                              <NA>
#> 256                                              <NA>
#> 257                                              <NA>
#> 258                                              <NA>
#> 259                                              <NA>
#> 260                                              <NA>
#> 261                                              <NA>
#> 262                                              <NA>
#> 263                                              <NA>
#> 264                                              <NA>
#> 265                                              <NA>
#> 266                                              <NA>
#> 267                                              <NA>
#> 268                                              <NA>
#> 269                                              <NA>
#> 270                                              <NA>
#> 271                                              <NA>
#> 272                                              <NA>
#> 273                                              <NA>
#> 274                                              <NA>
#> 275                                              <NA>
#> 276                                              <NA>
#> 277                                              <NA>
#> 278                                              <NA>
#> 279                                              <NA>
#> 280                                              <NA>
#> 281                                              <NA>
#> 282                                              <NA>
#> 283                                              <NA>
#> 284                                              <NA>
#> 285                                              <NA>
#> 286                                              <NA>
#> 287                                              <NA>
#> 288                                              <NA>
#> 289                                              <NA>
#> 290                                              <NA>
#> 291                                              <NA>
#> 292                                              <NA>
#> 293                                              <NA>
#> 294                                              <NA>
#> 295                                              <NA>
#> 296                                              <NA>
#> 297                                              <NA>
#> 298                                              <NA>
#> 299                                              <NA>
#> 300                                              <NA>
#> 301                                              <NA>
#> 302                       Board Vitals for Nephrology
#> 303                                              <NA>
#> 304                                              <NA>
#> 305                                              <NA>
#> 306                                              <NA>
#> 307                                              <NA>
#> 308                                              <NA>
#> 309                                              <NA>
#> 310                                              <NA>
#> 311                                              <NA>
#> 312                                              <NA>
#> 313                                              <NA>
#> 314                                              <NA>
#> 315                                              <NA>
#> 316                                              <NA>
#> 317                                              <NA>
#> 318                                              <NA>
#> 319                                              <NA>
#> 320                                              <NA>
#> 321                                              <NA>
#> 322                                              <NA>
#> 323                                              <NA>
#> 324                                              <NA>
#> 325                                              <NA>
#> 326                                              <NA>
#> 327                                              <NA>
#> 328                                              <NA>
#> 329                                              <NA>
#> 330                                              <NA>
#> 331                                              <NA>
#> 332                                              <NA>
#> 333                                              <NA>
#> 334                                              <NA>
#> 335                                              <NA>
#> 336                                              <NA>
#> 337                                              <NA>
#> 338                                              <NA>
#> 339                                              <NA>
#> 340                                              <NA>
#> 341                                              <NA>
#> 342                                              <NA>
#> 343                                              <NA>
#> 344                                              <NA>
#> 345                                              <NA>
#> 346                                              <NA>
#> 347                                              <NA>
#> 348                                              <NA>
#> 349                                              <NA>
#> 350                                              <NA>
#> 351                                              <NA>
#> 352                                              <NA>
#> 353                                              <NA>
#> 354                                              <NA>
#> 355                                              <NA>
#> 356                                              <NA>
#> 357                                              <NA>
#> 358                                              <NA>
#> 359                             Institution Materials
#> 360                                              <NA>
#> 361                                              <NA>
#> 362                                              <NA>
#> 363                                              <NA>
#> 364                                              <NA>
#> 365                                              Brcu
#> 366                                              <NA>
#> 367                                              <NA>
#> 368                                              <NA>
#> 369                                              <NA>
#> 370                                              <NA>
#> 371                                              <NA>
#> 372                                              <NA>
#> 373                                              <NA>
#> 374                                              <NA>
#> 375                                              <NA>
#> 376                                              <NA>
#> 377                                              <NA>
#> 378                                              <NA>
#> 379                                              <NA>
#> 380                                              <NA>
#> 381                                              <NA>
#> 382                                              <NA>
#> 383                                              <NA>
#> 384                                              <NA>
#> 385                                              <NA>
#> 386                                              <NA>
#> 387                                              <NA>
#> 388                                              <NA>
#> 389                                          uptodate
#> 390                                              <NA>
#> 391                                              <NA>
#> 392                                              <NA>
#> 393                                              <NA>
#> 394                                              <NA>
#> 395                                              <NA>
#> 396                                              <NA>
#> 397                                              <NA>
#> 398                                              <NA>
#> 399                                              <NA>
#> 400                                     Comprehensive
```
