// * insert ObligationActorAndCode($server, #can-send)
// * insert ObligationActorAndCode($creator, #can-send)
// * insert ObligationActorAndCode($creator, #can-populate)
// * insert ObligationActorAndCode($server, #will-send)

RuleSet: ObligationSet-01_author-shall
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)

RuleSet: ObligationSet-02_author-should
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)

RuleSet: ObligationSet-03_author-may
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #MAY:able-to-populate) 

RuleSet: ObligationSet-04_server-shall-01
* insert ObligationActorAndCode($server, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHOULD:populate-if-known) 

RuleSet: ObligationSet-05_server-shall-02
* insert ObligationActorAndCode($server, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #MAY:populate-if-known)

RuleSet: ObligationSet-06_server-shall-03
* insert ObligationActorAndCode($server, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)

RuleSet: ObligationSet-07_server-should-01
* insert ObligationActorAndCode($server, #SHOULD:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHOULD:populate-if-known) 

RuleSet: ObligationSet-08_server-should-02
* insert ObligationActorAndCode($server, #SHOULD:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #MAY:populate-if-known)

RuleSet: ObligationSet-09_server-should-03
* insert ObligationActorAndCode($server, #SHOULD:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)

RuleSet: ObligationSet-10_server-may-01
* insert ObligationActorAndCode($server, #MAY:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHOULD:populate-if-known) 

RuleSet: ObligationSet-11_server-may-02
* insert ObligationActorAndCode($server, #MAY:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #MAY:populate-if-known)

RuleSet: ObligationSet-12_server-may-03
* insert ObligationActorAndCode($server, #MAY:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)