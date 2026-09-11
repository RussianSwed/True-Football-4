.class final Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RulesApplication"
.end annotation


# instance fields
.field private final finalRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/shaded/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private found:Z

.field private i:I

.field private final input:Ljava/lang/CharSequence;

.field private maxPhonemes:I

.field private phonemeBuilder:Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/shaded/apache/commons/codec/language/bm/Rule;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;",
            "II)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The finalRules argument must not be null"

    .line 177
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iput-object p1, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->finalRules:Ljava/util/List;

    .line 180
    iput-object p3, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    .line 181
    iput-object p2, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->input:Ljava/lang/CharSequence;

    .line 182
    iput p4, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    .line 183
    iput p5, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->maxPhonemes:I

    return-void
.end method


# virtual methods
.method public getI()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    return v0
.end method

.method public getPhonemeBuilder()Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    return-object v0
.end method

.method public invoke()Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
    .locals 6

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    .line 204
    iget-object v1, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->finalRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/commons/codec/language/bm/Rule;

    .line 205
    invoke-virtual {v0}, Lorg/shaded/apache/commons/codec/language/bm/Rule;->getPattern()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 208
    iget-object v4, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->input:Ljava/lang/CharSequence;

    iget v5, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    invoke-virtual {v0, v4, v5}, Lorg/shaded/apache/commons/codec/language/bm/Rule;->patternAndContextMatches(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-virtual {v0}, Lorg/shaded/apache/commons/codec/language/bm/Rule;->getPhoneme()Lorg/shaded/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v0

    iget v4, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->maxPhonemes:I

    invoke-virtual {v1, v0, v4}, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->apply(Lorg/shaded/apache/commons/codec/language/bm/Rule$PhonemeExpr;I)Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    .line 213
    iput-boolean v3, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    move v0, v2

    .line 217
    :cond_1
    iget-boolean v1, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 221
    :goto_1
    iget v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    return-object p0
.end method

.method public isFound()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lorg/shaded/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    return v0
.end method
