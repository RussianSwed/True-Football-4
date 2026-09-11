.class public Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;,
        Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_PHONEMES:I = 0x14

.field private static final NAME_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/shaded/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final concat:Z

.field private final lang:Lorg/shaded/apache/commons/codec/language/bm/Lang;

.field private final maxPhonemes:I

.field private final nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

.field private final ruleType:Lorg/shaded/apache/commons/codec/language/bm/RuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 230
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/shaded/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    .line 233
    sget-object v1, Lorg/shaded/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "bar"

    const-string v4, "ben"

    const-string v5, "da"

    const-string v6, "de"

    const-string v7, "van"

    const-string v8, "von"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lorg/shaded/apache/commons/codec/language/bm/NameType;->SEPHARDIC:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "al"

    const-string v4, "el"

    const-string v5, "da"

    const-string v6, "dal"

    const-string v7, "de"

    const-string v8, "del"

    const-string v9, "dela"

    const-string v10, "de la"

    const-string v11, "della"

    const-string v12, "des"

    const-string v13, "di"

    const-string v14, "do"

    const-string v15, "dos"

    const-string v16, "du"

    const-string v17, "van"

    const-string v18, "von"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lorg/shaded/apache/commons/codec/language/bm/NameType;->GENERIC:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "da"

    const-string v4, "dal"

    const-string v5, "de"

    const-string v6, "del"

    const-string v7, "dela"

    const-string v8, "de la"

    const-string v9, "della"

    const-string v10, "des"

    const-string v11, "di"

    const-string v12, "do"

    const-string v13, "dos"

    const-string v14, "du"

    const-string v15, "van"

    const-string v16, "von"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/commons/codec/language/bm/NameType;Lorg/shaded/apache/commons/codec/language/bm/RuleType;Z)V
    .locals 1

    const/16 v0, 0x14

    .line 324
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lorg/shaded/apache/commons/codec/language/bm/NameType;Lorg/shaded/apache/commons/codec/language/bm/RuleType;ZI)V

    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/commons/codec/language/bm/NameType;Lorg/shaded/apache/commons/codec/language/bm/RuleType;ZI)V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    sget-object v0, Lorg/shaded/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/shaded/apache/commons/codec/language/bm/RuleType;

    if-eq p2, v0, :cond_0

    .line 344
    iput-object p1, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    .line 345
    iput-object p2, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/shaded/apache/commons/codec/language/bm/RuleType;

    .line 346
    iput-boolean p3, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    .line 347
    invoke-static {p1}, Lorg/shaded/apache/commons/codec/language/bm/Lang;->instance(Lorg/shaded/apache/commons/codec/language/bm/NameType;)Lorg/shaded/apache/commons/codec/language/bm/Lang;

    move-result-object p1

    iput-object p1, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/shaded/apache/commons/codec/language/bm/Lang;

    .line 348
    iput p4, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    return-void

    .line 342
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ruleType must not be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lorg/shaded/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/shaded/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyFinalRules(Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/List;)Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;",
            "Ljava/util/List<",
            "Lorg/shaded/apache/commons/codec/language/bm/Rule;",
            ">;)",
            "Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;"
        }
    .end annotation

    const-string v0, "finalRules can not be null"

    .line 361
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 367
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/shaded/apache/commons/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 369
    invoke-virtual {p1}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->getPhonemes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/shaded/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 370
    invoke-virtual {v1}, Lorg/shaded/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    invoke-static {v2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->empty(Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v2

    .line 371
    invoke-virtual {v1}, Lorg/shaded/apache/commons/codec/language/bm/Rule$Phoneme;->getPhonemeText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x0

    move-object v6, v2

    const/4 v2, 0x0

    .line 373
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 374
    new-instance v9, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    iget v8, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    move-object v3, v9

    move-object v4, p2

    move-object v5, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;-><init>(Ljava/util/List;Ljava/lang/CharSequence;Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;II)V

    invoke-virtual {v9}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->invoke()Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    move-result-object v3

    .line 376
    invoke-virtual {v3}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->isFound()Z

    move-result v4

    .line 377
    invoke-virtual {v3}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getPhonemeBuilder()Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v5

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 381
    invoke-interface {v1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->append(Ljava/lang/CharSequence;)Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_1
    move-object v6, v5

    .line 384
    :goto_2
    invoke-virtual {v3}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getI()I

    move-result v2

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {v6}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->getPhonemes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 390
    :cond_3
    new-instance p1, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$1;)V

    return-object p1
.end method

.method private static cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 254
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/CharSequence;

    .line 255
    new-instance v1, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$1;

    invoke-direct {v1, p0, v0}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$1;-><init>(Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 291
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/shaded/apache/commons/codec/language/bm/Lang;

    invoke-virtual {v0, p1}, Lorg/shaded/apache/commons/codec/language/bm/Lang;->guessLanguages(Ljava/lang/String;)Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    .line 402
    invoke-virtual {p0, p1, v0}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/lang/String;
    .locals 13

    .line 415
    iget-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    sget-object v1, Lorg/shaded/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/shaded/apache/commons/codec/language/bm/RuleType;

    invoke-static {v0, v1, p2}, Lorg/shaded/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/shaded/apache/commons/codec/language/bm/NameType;Lorg/shaded/apache/commons/codec/language/bm/RuleType;Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    iget-object v2, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/shaded/apache/commons/codec/language/bm/RuleType;

    const-string v3, "common"

    invoke-static {v1, v2, v3}, Lorg/shaded/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/shaded/apache/commons/codec/language/bm/NameType;Lorg/shaded/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    iget-object v3, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/shaded/apache/commons/codec/language/bm/RuleType;

    invoke-static {v2, v3, p2}, Lorg/shaded/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/shaded/apache/commons/codec/language/bm/NameType;Lorg/shaded/apache/commons/codec/language/bm/RuleType;Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v8

    .line 423
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2d

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 425
    iget-object v2, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    sget-object v3, Lorg/shaded/apache/commons/codec/language/bm/NameType;->GENERIC:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v3, :cond_2

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ")"

    const-string v9, ")-("

    const-string v10, "("

    if-lt v2, v6, :cond_0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v11, "d\'"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 428
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "d"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 431
    :cond_0
    sget-object v2, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    iget-object v11, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 433
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 435
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "\\s+"

    .line 442
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    sget-object v3, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$2;->$SwitchMap$org$apache$commons$codec$language$bm$NameType:[I

    iget-object v9, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v9}, Lorg/shaded/apache/commons/codec/language/bm/NameType;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 460
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 463
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unreachable case: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_4
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    sget-object v3, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    iget-object v6, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 448
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "\'"

    .line 449
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 450
    array-length v9, v6

    sub-int/2addr v9, v7

    aget-object v6, v6, v9

    .line 451
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_6
    sget-object v3, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    iget-object v6, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 466
    :goto_1
    iget-boolean v3, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    if-eqz v3, :cond_7

    .line 468
    invoke-static {v2, v4}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 469
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 482
    :goto_2
    invoke-static {p2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->empty(Lorg/shaded/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object p2

    .line 485
    invoke-static {p1}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v5, p2

    const/4 v6, 0x0

    .line 486
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v6, p2, :cond_8

    .line 487
    new-instance p2, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    iget v7, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    move-object v2, p2

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;-><init>(Ljava/util/List;Ljava/lang/CharSequence;Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;II)V

    invoke-virtual {p2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->invoke()Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    move-result-object p2

    .line 489
    invoke-virtual {p2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getI()I

    move-result v6

    .line 490
    invoke-virtual {p2}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getPhonemeBuilder()Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v5

    goto :goto_3

    .line 494
    :cond_8
    invoke-direct {p0, v5, v1}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->applyFinalRules(Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/List;)Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object p1

    .line 496
    invoke-direct {p0, p1, v8}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->applyFinalRules(Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/List;)Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 474
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    .line 476
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 479
    :cond_a
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLang()Lorg/shaded/apache/commons/codec/language/bm/Lang;
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/shaded/apache/commons/codec/language/bm/Lang;

    return-object v0
.end method

.method public getMaxPhonemes()I
    .locals 1

    .line 544
    iget v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    return v0
.end method

.method public getNameType()Lorg/shaded/apache/commons/codec/language/bm/NameType;
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/shaded/apache/commons/codec/language/bm/NameType;

    return-object v0
.end method

.method public getRuleType()Lorg/shaded/apache/commons/codec/language/bm/RuleType;
    .locals 1

    .line 525
    iget-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/shaded/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method

.method public isConcat()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    return v0
.end method
