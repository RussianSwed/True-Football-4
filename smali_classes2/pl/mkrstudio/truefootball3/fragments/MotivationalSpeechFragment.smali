.class public Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;
.super Landroidx/fragment/app/Fragment;
.source "MotivationalSpeechFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;
    }
.end annotation


# instance fields
.field aggression:I

.field aggressionTV:Landroid/widget/TextView;

.field concentration:I

.field concentrationTV:Landroid/widget/TextView;

.field continueGame:Landroid/widget/Button;

.field continueMatch:Landroid/widget/Button;

.field fullTime:Z

.field halfTime:Z

.field moraleChanges:[I

.field msListener:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;

.field proceedToMatch:Landroid/widget/Button;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv3:Landroid/widget/TextView;

.field tv4:Landroid/widget/TextView;

.field tv5:Landroid/widget/TextView;

.field tv6:Landroid/widget/TextView;

.field tv7:Landroid/widget/TextView;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field vf:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "halfTime",
            "fullTime"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 59
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->moraleChanges:[I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    .line 61
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    .line 68
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->halfTime:Z

    .line 69
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->fullTime:Z

    return-void
.end method

.method private getStringResource(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f0c0649

    return p1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f0c03bb

    return p1

    :cond_1
    if-nez p1, :cond_2

    const p1, 0x7f0c041e

    return p1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const p1, 0x7f0c034a

    return p1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    const p1, 0x7f0c0648

    return p1

    :cond_4
    return v0
.end method

.method private initSentences(Landroid/view/View;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "i"
        }
    .end annotation

    .line 128
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;

    invoke-direct {v0, p0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;Landroid/view/View;I)V

    .line 135
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    const-string v1, "GK"

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 136
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    const-string v2, "LB"

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 137
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 138
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 139
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 140
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 141
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv7:Landroid/widget/TextView;

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p1, 0x0

    const/16 v1, 0x64

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/16 v4, 0x28

    const/16 v5, 0x3c

    const/16 v6, 0x50

    const/16 v7, 0x8

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto/16 :goto_0

    .line 180
    :cond_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    const v2, 0x7f0c02b6

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    const v2, 0x7f0c02b7

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    const v2, 0x7f0c02b8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    const v2, 0x7f0c02b9

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    const v2, 0x7f0c02ba

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    const v2, 0x7f0c02bb

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv7:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    invoke-static {v6}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    invoke-static {v5}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 163
    :cond_1
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    const v2, 0x7f0c0339

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    const v2, 0x7f0c033a

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    const v2, 0x7f0c033b

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    const v2, 0x7f0c033c

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    const v2, 0x7f0c033d

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    const v2, 0x7f0c033e

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv7:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    invoke-static {v6}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    invoke-static {v5}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 145
    :cond_2
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    const v2, 0x7f0c0185

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    const v2, 0x7f0c0186

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    const v2, 0x7f0c0187

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    const v2, 0x7f0c0188

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    const v2, 0x7f0c0189

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    const v2, 0x7f0c018a

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv7:Landroid/widget/TextView;

    const v2, 0x7f0c018b

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    const/16 v1, 0x55

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    const/16 v1, 0x46

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    const/16 v1, 0x32

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    const/16 v1, 0x1e

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv7:Landroid/widget/TextView;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv7:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCurrentMatchInfo(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v1, 0x7f0801b3

    .line 224
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08007f

    .line 225
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0801b4

    .line 226
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080080

    .line 227
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0802c6

    .line 228
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 230
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 240
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    const v0, 0x7f08022b

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "team"
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "True Football 3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 253
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 258
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 261
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 264
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private showNextMatchInfo(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v1, 0x7f08022c

    .line 207
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08022a

    .line 208
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 209
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    const-string v3, ")"

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v4}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const v0, 0x7f080130

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSpeechResultsList(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    .line 650
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 651
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    const/16 v5, 0xb

    if-ge v3, v5, :cond_0

    .line 652
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 653
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    .line 654
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const-string v8, "morale"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->moraleChanges:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "moraleDiff"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "name"

    .line 656
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "nation"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const-string v7, "age"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "edited"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "position"

    if-eqz v4, :cond_1

    .line 661
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v4, "SUB"

    .line 663
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 665
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f080323

    .line 668
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 669
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/PlayersAfterSpeechAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/PlayersAfterSpeechAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 671
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method changeMorale()V
    .locals 6

    .line 619
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    .line 620
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 621
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 622
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getMorale()B

    move-result v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->moraleChanges:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    const/16 v5, 0x64

    if-le v4, v5, :cond_0

    const/16 v4, 0x64

    :cond_0
    if-gez v4, :cond_1

    const/4 v4, 0x0

    :cond_1
    int-to-byte v4, v4

    .line 627
    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setMorale(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0800c6

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->proceedToMatch:Landroid/widget/Button;

    .line 88
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ad

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueMatch:Landroid/widget/Button;

    .line 96
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ac

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueGame:Landroid/widget/Button;

    .line 104
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08004c

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggressionTV:Landroid/widget/TextView;

    const v0, 0x7f080109

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentrationTV:Landroid/widget/TextView;

    const v0, 0x7f0801fb

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->vf:Landroid/widget/ViewFlipper;

    const v0, 0x7f08037c

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv1:Landroid/widget/TextView;

    const v0, 0x7f08037d

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv2:Landroid/widget/TextView;

    const v0, 0x7f08037e

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv3:Landroid/widget/TextView;

    const v0, 0x7f08037f

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv4:Landroid/widget/TextView;

    const v0, 0x7f080380

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv5:Landroid/widget/TextView;

    const v0, 0x7f080381

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv6:Landroid/widget/TextView;

    const v0, 0x7f080382

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->tv7:Landroid/widget/TextView;

    .line 124
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->halfTime:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->fullTime:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->initSentences(Landroid/view/View;I)V

    return-void
.end method

.method motivatePlayer(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "which",
            "howMuch"
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 676
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->moraleChanges:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0xa

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    aput v2, v1, p1

    return-void
.end method

.method motivatePlayers(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "howMuch"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 681
    invoke-virtual {p0, v0, p1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->motivatePlayer(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 687
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 689
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->msListener:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 691
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnButtonClickedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0a0076

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 79
    iget-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->halfTime:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->fullTime:Z

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->showNextMatchInfo(Landroid/view/View;)V

    .line 80
    :cond_0
    iget-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->halfTime:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->fullTime:Z

    if-eqz p2, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->showCurrentMatchInfo(Landroid/view/View;)V

    .line 81
    :cond_2
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method protected react(Landroid/view/View;II)V
    .locals 30
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "i",
            "id"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 270
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->showNext()V

    .line 272
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    .line 273
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v5

    .line 274
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    :goto_0
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v6

    .line 275
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    if-ne v7, v8, :cond_1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    .line 276
    :goto_1
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    :goto_2
    const v8, 0x7f08037c

    const/16 v9, 0x8

    const/16 v10, -0xa

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v2, :cond_4b

    .line 280
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->proceedToMatch:Landroid/widget/Button;

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueMatch:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueGame:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, -0x19

    const/16 v4, -0x14

    const/16 v7, -0x28

    const/16 v9, -0x1e

    const/4 v15, -0x1

    const/16 v16, -0x5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v19, 0x3ff4000000000000L    # 1.25

    const-wide/high16 v21, 0x4002000000000000L    # 2.25

    const-wide/high16 v23, 0x400c000000000000L    # 3.5

    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    const/16 v27, 0x5

    if-ne v3, v8, :cond_e

    .line 285
    iput v15, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    const/4 v2, -0x2

    .line 286
    iput v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    float-to-double v2, v5

    float-to-double v12, v6

    .line 287
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v15, v12, v25

    cmpl-double v8, v2, v15

    if-ltz v8, :cond_3

    const/16 v10, 0x14

    goto/16 :goto_13

    .line 289
    :cond_3
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v15, v12, v23

    cmpl-double v8, v2, v15

    if-ltz v8, :cond_4

    :goto_3
    const/16 v10, 0xa

    goto/16 :goto_13

    .line 291
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v15, v12, v21

    cmpl-double v8, v2, v15

    if-ltz v8, :cond_5

    :goto_4
    goto/16 :goto_b

    .line 293
    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v12, v19

    cmpl-double v8, v2, v14

    if-ltz v8, :cond_6

    goto/16 :goto_13

    .line 295
    :cond_6
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v10, v12, v17

    cmpl-double v8, v2, v10

    if-ltz v8, :cond_7

    :goto_5
    const/16 v10, -0x14

    goto/16 :goto_13

    :cond_7
    cmpl-float v4, v5, v6

    if-ltz v4, :cond_8

    goto/16 :goto_d

    .line 299
    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v17

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_9

    goto/16 :goto_10

    .line 301
    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v19

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_a

    :goto_6
    goto/16 :goto_c

    .line 303
    :cond_a
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v21

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_b

    goto/16 :goto_f

    .line 305
    :cond_b
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v23

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_c

    goto/16 :goto_12

    .line 307
    :cond_c
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v12, v12, v25

    cmpl-double v4, v2, v12

    if-ltz v4, :cond_d

    goto/16 :goto_11

    :cond_d
    const/16 v10, -0x4b

    goto/16 :goto_13

    :cond_e
    const v8, 0x7f08037d

    if-ne v3, v8, :cond_1a

    .line 313
    iput v15, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    .line 314
    iput v15, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    float-to-double v12, v5

    float-to-double v14, v6

    .line 315
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v14, v25

    cmpl-double v3, v12, v28

    if-ltz v3, :cond_f

    const/16 v10, 0xf

    goto/16 :goto_13

    .line 317
    :cond_f
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v14, v23

    cmpl-double v3, v12, v28

    if-ltz v3, :cond_10

    const/16 v10, 0xc

    goto/16 :goto_13

    .line 319
    :cond_10
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v14, v21

    cmpl-double v3, v12, v28

    if-ltz v3, :cond_11

    goto/16 :goto_3

    .line 321
    :cond_11
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v14, v19

    cmpl-double v3, v12, v28

    if-ltz v3, :cond_13

    :cond_12
    :goto_7
    const/4 v10, 0x5

    goto/16 :goto_13

    .line 323
    :cond_13
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v27, v14, v17

    cmpl-double v3, v12, v27

    if-ltz v3, :cond_14

    goto :goto_9

    :cond_14
    cmpl-float v3, v5, v6

    if-ltz v3, :cond_15

    goto/16 :goto_13

    .line 327
    :cond_15
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v14, v17

    cmpl-double v3, v12, v5

    if-ltz v3, :cond_16

    const/16 v10, -0xc

    goto/16 :goto_13

    .line 329
    :cond_16
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v14, v19

    cmpl-double v3, v12, v5

    if-ltz v3, :cond_17

    :goto_8
    const/16 v10, -0xf

    goto/16 :goto_13

    .line 331
    :cond_17
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v14, v21

    cmpl-double v3, v12, v5

    if-ltz v3, :cond_18

    goto/16 :goto_5

    .line 333
    :cond_18
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v14, v23

    cmpl-double v5, v12, v3

    if-ltz v5, :cond_19

    goto/16 :goto_e

    .line 335
    :cond_19
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v14, v25

    cmpl-double v2, v12, v14

    if-ltz v2, :cond_29

    goto/16 :goto_d

    :cond_1a
    const v8, 0x7f08037e

    if-ne v3, v8, :cond_26

    .line 341
    iput v14, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    .line 342
    iput v14, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    float-to-double v3, v5

    float-to-double v7, v6

    .line 343
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v25

    cmpl-double v9, v3, v12

    if-ltz v9, :cond_1b

    goto/16 :goto_13

    .line 345
    :cond_1b
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v23

    cmpl-double v9, v3, v12

    if-ltz v9, :cond_1d

    :cond_1c
    :goto_9
    const/4 v10, -0x5

    goto/16 :goto_13

    .line 347
    :cond_1d
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v21

    cmpl-double v9, v3, v12

    if-ltz v9, :cond_1e

    goto/16 :goto_4

    .line 349
    :cond_1e
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v19

    cmpl-double v9, v3, v12

    if-ltz v9, :cond_1f

    :goto_a
    goto/16 :goto_7

    .line 351
    :cond_1f
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v17

    cmpl-double v9, v3, v12

    if-ltz v9, :cond_20

    goto/16 :goto_3

    :cond_20
    cmpl-float v5, v5, v6

    if-ltz v5, :cond_21

    goto/16 :goto_3

    .line 355
    :cond_21
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v7, v17

    cmpl-double v9, v3, v5

    if-ltz v9, :cond_22

    goto/16 :goto_3

    .line 357
    :cond_22
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v7, v19

    cmpl-double v9, v3, v5

    if-ltz v9, :cond_23

    goto/16 :goto_4

    .line 359
    :cond_23
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v7, v21

    cmpl-double v9, v3, v5

    if-ltz v9, :cond_24

    goto :goto_9

    .line 361
    :cond_24
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v7, v23

    cmpl-double v9, v3, v5

    if-ltz v9, :cond_25

    goto/16 :goto_13

    .line 363
    :cond_25
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v7, v25

    cmpl-double v5, v3, v7

    if-ltz v5, :cond_2c

    goto/16 :goto_8

    :cond_26
    const v8, 0x7f08037f

    if-ne v3, v8, :cond_28

    .line 369
    iput v12, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    .line 370
    iput v15, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    :cond_27
    :goto_b
    const/4 v10, 0x0

    goto/16 :goto_13

    :cond_28
    const v8, 0x7f080380

    if-ne v3, v8, :cond_35

    .line 374
    iput v14, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    .line 375
    iput v13, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    float-to-double v3, v5

    float-to-double v12, v6

    .line 376
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v12, v25

    cmpl-double v8, v3, v28

    if-ltz v8, :cond_2a

    :cond_29
    :goto_c
    const/16 v10, -0x28

    goto/16 :goto_13

    .line 378
    :cond_2a
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v12, v23

    cmpl-double v15, v3, v7

    if-ltz v15, :cond_2b

    :goto_d
    const/16 v10, -0x1e

    goto/16 :goto_13

    .line 380
    :cond_2b
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v12, v21

    cmpl-double v9, v3, v7

    if-ltz v9, :cond_2d

    :cond_2c
    :goto_e
    const/16 v10, -0x19

    goto/16 :goto_13

    .line 382
    :cond_2d
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v12, v19

    cmpl-double v2, v3, v7

    if-ltz v2, :cond_2e

    goto/16 :goto_13

    .line 384
    :cond_2e
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v12, v17

    cmpl-double v2, v3, v7

    if-ltz v2, :cond_2f

    goto/16 :goto_9

    :cond_2f
    cmpl-float v2, v5, v6

    if-ltz v2, :cond_30

    goto/16 :goto_4

    .line 388
    :cond_30
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v12, v17

    cmpl-double v2, v3, v5

    if-ltz v2, :cond_31

    goto/16 :goto_a

    .line 390
    :cond_31
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v12, v19

    cmpl-double v2, v3, v5

    if-ltz v2, :cond_32

    goto/16 :goto_3

    .line 392
    :cond_32
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v12, v21

    cmpl-double v2, v3, v5

    if-ltz v2, :cond_33

    goto/16 :goto_a

    .line 394
    :cond_33
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v12, v23

    cmpl-double v2, v3, v5

    if-ltz v2, :cond_34

    goto/16 :goto_4

    .line 396
    :cond_34
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v12, v12, v25

    cmpl-double v2, v3, v12

    if-ltz v2, :cond_1c

    goto/16 :goto_4

    :cond_35
    const v2, 0x7f080381

    if-ne v3, v2, :cond_40

    .line 402
    iput v14, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    .line 403
    iput v13, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    float-to-double v2, v5

    float-to-double v7, v6

    .line 404
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v25

    cmpl-double v15, v2, v12

    if-ltz v15, :cond_36

    :goto_f
    const/16 v10, -0x2d

    goto/16 :goto_13

    .line 406
    :cond_36
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v23

    cmpl-double v15, v2, v12

    if-ltz v15, :cond_37

    :goto_10
    const/16 v10, -0x23

    goto/16 :goto_13

    .line 408
    :cond_37
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v21

    cmpl-double v15, v2, v12

    if-ltz v15, :cond_38

    goto/16 :goto_d

    .line 410
    :cond_38
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v19

    cmpl-double v9, v2, v12

    if-ltz v9, :cond_39

    goto/16 :goto_5

    .line 412
    :cond_39
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v7, v17

    cmpl-double v4, v2, v12

    if-ltz v4, :cond_3a

    goto/16 :goto_13

    :cond_3a
    cmpl-float v4, v5, v6

    if-ltz v4, :cond_3b

    goto/16 :goto_9

    .line 416
    :cond_3b
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v7, v17

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3c

    goto/16 :goto_4

    .line 418
    :cond_3c
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v7, v19

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3d

    goto/16 :goto_7

    .line 420
    :cond_3d
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v7, v21

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3e

    goto/16 :goto_3

    .line 422
    :cond_3e
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v7, v23

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3f

    goto/16 :goto_7

    .line 424
    :cond_3f
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v7, v25

    cmpl-double v4, v2, v7

    if-ltz v4, :cond_27

    goto/16 :goto_a

    :cond_40
    const v2, 0x7f080382

    if-ne v3, v2, :cond_27

    .line 430
    iput v14, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    .line 431
    iput v12, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    float-to-double v2, v5

    float-to-double v12, v6

    .line 432
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v12, v25

    cmpl-double v8, v2, v28

    if-ltz v8, :cond_41

    :goto_11
    const/16 v10, -0x3c

    goto/16 :goto_13

    .line 434
    :cond_41
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v12, v23

    cmpl-double v8, v2, v28

    if-ltz v8, :cond_42

    :goto_12
    const/16 v10, -0x32

    goto :goto_13

    .line 436
    :cond_42
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v12, v21

    cmpl-double v8, v2, v28

    if-ltz v8, :cond_43

    goto/16 :goto_6

    .line 438
    :cond_43
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v12, v19

    cmpl-double v15, v2, v7

    if-ltz v15, :cond_44

    goto/16 :goto_d

    .line 440
    :cond_44
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v12, v17

    cmpl-double v9, v2, v7

    if-ltz v9, :cond_45

    goto/16 :goto_5

    :cond_45
    cmpl-float v4, v5, v6

    if-ltz v4, :cond_46

    goto :goto_13

    .line 444
    :cond_46
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v17

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_47

    goto/16 :goto_9

    .line 446
    :cond_47
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v19

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_48

    goto/16 :goto_4

    .line 448
    :cond_48
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v21

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_49

    goto/16 :goto_a

    .line 450
    :cond_49
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v23

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_4a

    goto/16 :goto_3

    .line 452
    :cond_4a
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v12, v12, v25

    cmpl-double v4, v2, v12

    if-ltz v4, :cond_12

    goto/16 :goto_3

    .line 457
    :goto_13
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggressionTV:Landroid/widget/TextView;

    iget v3, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    invoke-direct {v0, v3}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentrationTV:Landroid/widget/TextView;

    iget v3, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    invoke-direct {v0, v3}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->getStringResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 459
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    iget v3, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->aggression:I

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setAggression(I)V

    .line 460
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    iget v3, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->concentration:I

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setConcentration(I)V

    move v14, v10

    goto/16 :goto_17

    :cond_4b
    if-eq v2, v13, :cond_4c

    if-ne v2, v12, :cond_85

    :cond_4c
    const v12, 0x7f08004d

    .line 462
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    const v12, 0x7f08010a

    .line 463
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v12, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->proceedToMatch:Landroid/widget/Button;

    invoke-virtual {v12, v9}, Landroid/widget/Button;->setVisibility(I)V

    if-ne v2, v13, :cond_4d

    .line 466
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueMatch:Landroid/widget/Button;

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueGame:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_14

    .line 469
    :cond_4d
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueMatch:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 470
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->continueGame:Landroid/widget/Button;

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setVisibility(I)V

    :goto_14
    sub-float/2addr v5, v6

    const/16 v2, 0x15

    new-array v6, v2, [I

    if-ne v3, v8, :cond_56

    add-int/lit8 v3, v4, 0x5

    if-lt v7, v3, :cond_4e

    new-array v6, v2, [I

    .line 478
    fill-array-data v6, :array_0

    goto/16 :goto_15

    :cond_4e
    add-int/lit8 v3, v4, 0x3

    if-lt v7, v3, :cond_4f

    new-array v6, v2, [I

    .line 480
    fill-array-data v6, :array_1

    goto/16 :goto_15

    :cond_4f
    add-int/lit8 v3, v4, 0x2

    if-lt v7, v3, :cond_50

    new-array v6, v2, [I

    .line 482
    fill-array-data v6, :array_2

    goto/16 :goto_15

    :cond_50
    add-int/lit8 v3, v4, 0x1

    if-lt v7, v3, :cond_51

    new-array v6, v2, [I

    .line 484
    fill-array-data v6, :array_3

    goto/16 :goto_15

    :cond_51
    if-lt v7, v4, :cond_52

    new-array v6, v2, [I

    .line 486
    fill-array-data v6, :array_4

    goto/16 :goto_15

    :cond_52
    add-int/lit8 v3, v4, -0x1

    if-lt v7, v3, :cond_53

    new-array v6, v2, [I

    .line 488
    fill-array-data v6, :array_5

    goto/16 :goto_15

    :cond_53
    add-int/lit8 v3, v4, -0x2

    if-lt v7, v3, :cond_54

    new-array v6, v2, [I

    .line 490
    fill-array-data v6, :array_6

    goto/16 :goto_15

    :cond_54
    add-int/lit8 v4, v4, -0x4

    if-lt v7, v4, :cond_55

    new-array v6, v2, [I

    .line 492
    fill-array-data v6, :array_7

    goto/16 :goto_15

    :cond_55
    new-array v6, v2, [I

    .line 494
    fill-array-data v6, :array_8

    goto/16 :goto_15

    :cond_56
    const v8, 0x7f08037d

    if-ne v3, v8, :cond_5f

    add-int/lit8 v3, v4, 0x5

    if-lt v7, v3, :cond_57

    new-array v6, v2, [I

    .line 500
    fill-array-data v6, :array_9

    goto/16 :goto_15

    :cond_57
    add-int/lit8 v3, v4, 0x3

    if-lt v7, v3, :cond_58

    new-array v6, v2, [I

    .line 502
    fill-array-data v6, :array_a

    goto/16 :goto_15

    :cond_58
    add-int/lit8 v3, v4, 0x2

    if-lt v7, v3, :cond_59

    new-array v6, v2, [I

    .line 504
    fill-array-data v6, :array_b

    goto/16 :goto_15

    :cond_59
    add-int/lit8 v3, v4, 0x1

    if-lt v7, v3, :cond_5a

    new-array v6, v2, [I

    .line 506
    fill-array-data v6, :array_c

    goto/16 :goto_15

    :cond_5a
    if-lt v7, v4, :cond_5b

    new-array v6, v2, [I

    .line 508
    fill-array-data v6, :array_d

    goto/16 :goto_15

    :cond_5b
    add-int/lit8 v3, v4, -0x1

    if-lt v7, v3, :cond_5c

    new-array v6, v2, [I

    .line 510
    fill-array-data v6, :array_e

    goto/16 :goto_15

    :cond_5c
    add-int/lit8 v3, v4, -0x2

    if-lt v7, v3, :cond_5d

    new-array v6, v2, [I

    .line 512
    fill-array-data v6, :array_f

    goto/16 :goto_15

    :cond_5d
    add-int/lit8 v4, v4, -0x4

    if-lt v7, v4, :cond_5e

    new-array v6, v2, [I

    .line 514
    fill-array-data v6, :array_10

    goto/16 :goto_15

    :cond_5e
    new-array v6, v2, [I

    .line 516
    fill-array-data v6, :array_11

    goto/16 :goto_15

    :cond_5f
    const v8, 0x7f08037e

    if-ne v3, v8, :cond_68

    add-int/lit8 v3, v4, 0x5

    if-lt v7, v3, :cond_60

    new-array v6, v2, [I

    .line 521
    fill-array-data v6, :array_12

    goto/16 :goto_15

    :cond_60
    add-int/lit8 v3, v4, 0x3

    if-lt v7, v3, :cond_61

    new-array v6, v2, [I

    .line 523
    fill-array-data v6, :array_13

    goto/16 :goto_15

    :cond_61
    add-int/lit8 v3, v4, 0x2

    if-lt v7, v3, :cond_62

    new-array v6, v2, [I

    .line 525
    fill-array-data v6, :array_14

    goto/16 :goto_15

    :cond_62
    add-int/lit8 v3, v4, 0x1

    if-lt v7, v3, :cond_63

    new-array v6, v2, [I

    .line 527
    fill-array-data v6, :array_15

    goto/16 :goto_15

    :cond_63
    if-lt v7, v4, :cond_64

    new-array v6, v2, [I

    .line 529
    fill-array-data v6, :array_16

    goto/16 :goto_15

    :cond_64
    add-int/lit8 v3, v4, -0x1

    if-lt v7, v3, :cond_65

    new-array v6, v2, [I

    .line 531
    fill-array-data v6, :array_17

    goto/16 :goto_15

    :cond_65
    add-int/lit8 v3, v4, -0x2

    if-lt v7, v3, :cond_66

    new-array v6, v2, [I

    .line 533
    fill-array-data v6, :array_18

    goto/16 :goto_15

    :cond_66
    add-int/lit8 v4, v4, -0x4

    if-lt v7, v4, :cond_67

    new-array v6, v2, [I

    .line 535
    fill-array-data v6, :array_19

    goto/16 :goto_15

    :cond_67
    new-array v6, v2, [I

    .line 537
    fill-array-data v6, :array_1a

    goto/16 :goto_15

    :cond_68
    const v8, 0x7f08037f

    if-ne v3, v8, :cond_71

    add-int/lit8 v3, v4, 0x5

    if-lt v7, v3, :cond_69

    new-array v6, v2, [I

    .line 542
    fill-array-data v6, :array_1b

    goto/16 :goto_15

    :cond_69
    add-int/lit8 v3, v4, 0x3

    if-lt v7, v3, :cond_6a

    new-array v6, v2, [I

    .line 544
    fill-array-data v6, :array_1c

    goto/16 :goto_15

    :cond_6a
    add-int/lit8 v3, v4, 0x2

    if-lt v7, v3, :cond_6b

    new-array v6, v2, [I

    .line 546
    fill-array-data v6, :array_1d

    goto/16 :goto_15

    :cond_6b
    add-int/lit8 v3, v4, 0x1

    if-lt v7, v3, :cond_6c

    new-array v6, v2, [I

    .line 548
    fill-array-data v6, :array_1e

    goto/16 :goto_15

    :cond_6c
    if-lt v7, v4, :cond_6d

    new-array v6, v2, [I

    .line 550
    fill-array-data v6, :array_1f

    goto/16 :goto_15

    :cond_6d
    add-int/lit8 v3, v4, -0x1

    if-lt v7, v3, :cond_6e

    new-array v6, v2, [I

    .line 552
    fill-array-data v6, :array_20

    goto/16 :goto_15

    :cond_6e
    add-int/lit8 v3, v4, -0x2

    if-lt v7, v3, :cond_6f

    new-array v6, v2, [I

    .line 554
    fill-array-data v6, :array_21

    goto/16 :goto_15

    :cond_6f
    add-int/lit8 v4, v4, -0x4

    if-lt v7, v4, :cond_70

    new-array v6, v2, [I

    .line 556
    fill-array-data v6, :array_22

    goto/16 :goto_15

    :cond_70
    new-array v6, v2, [I

    .line 558
    fill-array-data v6, :array_23

    goto/16 :goto_15

    :cond_71
    const v8, 0x7f080380

    if-ne v3, v8, :cond_7a

    add-int/lit8 v3, v4, 0x5

    if-lt v7, v3, :cond_72

    new-array v6, v2, [I

    .line 563
    fill-array-data v6, :array_24

    goto/16 :goto_15

    :cond_72
    add-int/lit8 v3, v4, 0x3

    if-lt v7, v3, :cond_73

    new-array v6, v2, [I

    .line 565
    fill-array-data v6, :array_25

    goto/16 :goto_15

    :cond_73
    add-int/lit8 v3, v4, 0x2

    if-lt v7, v3, :cond_74

    new-array v6, v2, [I

    .line 567
    fill-array-data v6, :array_26

    goto/16 :goto_15

    :cond_74
    add-int/lit8 v3, v4, 0x1

    if-lt v7, v3, :cond_75

    new-array v6, v2, [I

    .line 569
    fill-array-data v6, :array_27

    goto/16 :goto_15

    :cond_75
    if-lt v7, v4, :cond_76

    new-array v6, v2, [I

    .line 571
    fill-array-data v6, :array_28

    goto/16 :goto_15

    :cond_76
    add-int/lit8 v3, v4, -0x1

    if-lt v7, v3, :cond_77

    new-array v6, v2, [I

    .line 573
    fill-array-data v6, :array_29

    goto/16 :goto_15

    :cond_77
    add-int/lit8 v3, v4, -0x2

    if-lt v7, v3, :cond_78

    new-array v6, v2, [I

    .line 575
    fill-array-data v6, :array_2a

    goto/16 :goto_15

    :cond_78
    add-int/lit8 v4, v4, -0x4

    if-lt v7, v4, :cond_79

    new-array v6, v2, [I

    .line 577
    fill-array-data v6, :array_2b

    goto :goto_15

    :cond_79
    new-array v6, v2, [I

    .line 579
    fill-array-data v6, :array_2c

    goto :goto_15

    :cond_7a
    const v8, 0x7f080381

    if-ne v3, v8, :cond_83

    add-int/lit8 v3, v4, 0x5

    if-lt v7, v3, :cond_7b

    new-array v6, v2, [I

    .line 584
    fill-array-data v6, :array_2d

    goto :goto_15

    :cond_7b
    add-int/lit8 v3, v4, 0x3

    if-lt v7, v3, :cond_7c

    new-array v6, v2, [I

    .line 586
    fill-array-data v6, :array_2e

    goto :goto_15

    :cond_7c
    add-int/lit8 v3, v4, 0x2

    if-lt v7, v3, :cond_7d

    new-array v6, v2, [I

    .line 588
    fill-array-data v6, :array_2f

    goto :goto_15

    :cond_7d
    add-int/lit8 v3, v4, 0x1

    if-lt v7, v3, :cond_7e

    new-array v6, v2, [I

    .line 590
    fill-array-data v6, :array_30

    goto :goto_15

    :cond_7e
    if-lt v7, v4, :cond_7f

    new-array v6, v2, [I

    .line 592
    fill-array-data v6, :array_31

    goto :goto_15

    :cond_7f
    add-int/lit8 v3, v4, -0x1

    if-lt v7, v3, :cond_80

    new-array v6, v2, [I

    .line 594
    fill-array-data v6, :array_32

    goto :goto_15

    :cond_80
    add-int/lit8 v3, v4, -0x2

    if-lt v7, v3, :cond_81

    new-array v6, v2, [I

    .line 596
    fill-array-data v6, :array_33

    goto :goto_15

    :cond_81
    add-int/lit8 v4, v4, -0x4

    if-lt v7, v4, :cond_82

    new-array v6, v2, [I

    .line 598
    fill-array-data v6, :array_34

    goto :goto_15

    :cond_82
    new-array v6, v2, [I

    .line 600
    fill-array-data v6, :array_35

    :cond_83
    :goto_15
    const/4 v2, 0x0

    :goto_16
    if-lt v11, v10, :cond_85

    int-to-float v3, v11

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_84

    .line 607
    aget v14, v6, v2

    goto :goto_17

    :cond_84
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_16

    .line 613
    :cond_85
    :goto_17
    invoke-virtual {v0, v14}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->motivatePlayers(I)V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->changeMorale()V

    .line 615
    invoke-direct/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->showSpeechResultsList(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x5
        -0x3
        -0x2
        0x1
        0x2
        0x5
        0xa
        0xf
        0x14
        0x1e
        0x28
        0x2d
        0x2d
        0x2d
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
    .end array-data

    :array_1
    .array-data 4
        -0xa
        -0x8
        -0x6
        -0x2
        -0x1
        0x1
        0x6
        0xa
        0xe
        0x11
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x28
        0x2d
        0x2d
        0x2d
        0x32
        0x32
    .end array-data

    :array_2
    .array-data 4
        -0x19
        -0x19
        -0x19
        -0x14
        -0x14
        -0xf
        -0xa
        -0x5
        0x0
        0x0
        0x3
        0x8
        0x10
        0x19
        0x1e
        0x1e
        0x23
        0x23
        0x28
        0x28
        0x28
    .end array-data

    :array_3
    .array-data 4
        -0x28
        -0x28
        -0x23
        -0x23
        -0x1e
        -0x19
        -0x14
        -0xf
        -0xa
        -0x5
        0x0
        0x3
        0x5
        0xc
        0x15
        0x1e
        0x1e
        0x1e
        0x23
        0x23
        0x23
    .end array-data

    :array_4
    .array-data 4
        -0x32
        -0x32
        -0x2a
        -0x2a
        -0x26
        -0x26
        -0x23
        -0x1e
        -0x14
        -0xa
        0x0
        0x1
        0x3
        0x6
        0xc
        0xf
        0x14
        0x14
        0x19
        0x1e
        0x1e
    .end array-data

    :array_5
    .array-data 4
        -0x46
        -0x46
        -0x3c
        -0x3c
        -0x37
        -0x37
        -0x32
        -0x28
        -0x1e
        -0x14
        -0xa
        -0x7
        -0x5
        0x0
        0x2
        0x4
        0x7
        0xa
        0xa
        0xf
        0xf
    .end array-data

    :array_6
    .array-data 4
        -0x46
        -0x46
        -0x46
        -0x3c
        -0x3c
        -0x3c
        -0x37
        -0x2d
        -0x28
        -0x20
        -0x19
        -0xf
        -0xa
        -0x5
        -0x5
        0x0
        0x0
        0x2
        0x3
        0x5
        0x7
    .end array-data

    :array_7
    .array-data 4
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x3c
        -0x3c
        -0x32
        -0x32
        -0x28
        -0x23
        -0x1b
        -0x14
        -0x12
        -0x10
        -0xe
        -0xb
        -0x8
        -0x5
        -0x2
        0x0
    .end array-data

    :array_8
    .array-data 4
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x3c
        -0x3c
        -0x32
        -0x2d
        -0x1e
        -0x19
        -0x16
        -0x14
        -0x12
        -0xf
        -0xc
        -0x9
        -0x7
        -0x5
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0x5
        0xc
        0xf
        0xf
        0xa
        0xa
        0xa
        0xa
        0x14
        0x14
        0x14
        0x14
        0x19
        0x19
        0x19
        0x19
        0x19
    .end array-data

    :array_a
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x5
        0x7
        0x9
        0xb
        0xc
        0xd
        0xe
        0xe
        0xf
        0xf
        0x10
        0x10
        0x12
        0x12
        0x14
        0x14
    .end array-data

    :array_b
    .array-data 4
        -0xa
        -0xa
        -0xa
        -0xa
        -0x8
        -0x8
        -0x7
        -0x3
        0x1
        0x2
        0x7
        0x7
        0x8
        0x8
        0xa
        0xa
        0xc
        0xc
        0xf
        0xf
        0xf
    .end array-data

    :array_c
    .array-data 4
        -0x14
        -0x11
        -0xf
        -0xf
        -0xc
        -0xa
        -0xa
        -0x8
        -0x5
        -0x2
        0x2
        0x4
        0x6
        0x8
        0xa
        0xa
        0xc
        0xc
        0xf
        0xf
        0xf
    .end array-data

    :array_d
    .array-data 4
        -0x1e
        -0x1e
        -0x19
        -0x19
        -0x14
        -0x14
        -0x14
        -0xf
        -0xa
        -0x5
        0x0
        0x3
        0x6
        0x9
        0xc
        0xc
        0xf
        0xf
        0x14
        0x14
        0x14
    .end array-data

    :array_e
    .array-data 4
        -0x3c
        -0x3c
        -0x2d
        -0x2d
        -0x23
        -0x23
        -0x23
        -0x19
        -0x19
        -0xf
        -0x5
        -0x3
        -0x2
        0x1
        0x3
        0x6
        0x9
        0xf
        0x14
        0x19
        0x19
    .end array-data

    :array_f
    .array-data 4
        -0x3c
        -0x3c
        -0x3c
        -0x32
        -0x32
        -0x2d
        -0x28
        -0x23
        -0x1e
        -0x14
        -0xa
        -0x6
        -0x3
        0x0
        0x0
        0x2
        0x3
        0x4
        0x6
        0x9
        0xf
    .end array-data

    :array_10
    .array-data 4
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x32
        -0x32
        -0x2d
        -0x28
        -0x23
        -0x1e
        -0x19
        -0x14
        -0xf
        -0xa
        -0x8
        -0x6
        -0x5
        -0x2
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x32
        -0x32
        -0x2d
        -0x23
        -0x19
        -0x14
        -0x11
        -0xf
        -0xd
        -0xc
        -0x9
        -0x6
        -0x4
        -0x2
    .end array-data

    :array_12
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x2
        -0x2
        -0x2
        -0x5
        -0x5
        -0x5
        -0x5
        -0x5
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x5
        0x5
        0x5
        0x4
        0x4
        0x4
        0x4
        0x3
        0x3
        0x2
        0x0
        -0x2
        -0x4
        -0x5
        -0x5
        -0x8
        -0x8
        -0x8
        -0x8
        -0x8
    .end array-data

    :array_14
    .array-data 4
        -0x5
        -0x5
        -0x5
        -0x3
        -0x3
        -0x2
        -0x1
        0x0
        0x1
        0x2
        0x4
        0x2
        0x0
        -0x2
        -0x4
        -0x6
        -0x6
        -0x8
        -0x8
        -0xa
        -0xa
    .end array-data

    :array_15
    .array-data 4
        -0x7
        -0x7
        -0x7
        -0x5
        -0x5
        -0x3
        -0x3
        -0x1
        0x0
        0x3
        0x6
        0x8
        0xb
        -0x2
        -0x4
        -0x6
        -0x6
        -0x8
        -0x8
        -0xa
        -0xa
    .end array-data

    :array_16
    .array-data 4
        -0x14
        -0x14
        -0xf
        -0xf
        -0xf
        -0xf
        -0xc
        -0xa
        -0x5
        0x1
        0x2
        0x3
        0x5
        0x2
        0x0
        -0x2
        -0x2
        -0x3
        -0x4
        -0x5
        -0x5
    .end array-data

    :array_17
    .array-data 4
        -0x28
        -0x28
        -0x23
        -0x23
        -0x1e
        -0x1e
        -0x19
        -0x14
        -0xf
        -0xa
        0x0
        0x3
        0x6
        0x9
        0xd
        0x10
        0xf
        0xc
        0xa
        0xa
        0xa
    .end array-data

    :array_18
    .array-data 4
        -0x32
        -0x32
        -0x28
        -0x28
        -0x23
        -0x23
        -0x23
        -0x1e
        -0x16
        -0xf
        -0x5
        0x0
        0x2
        0x3
        0x4
        0x6
        0x9
        0xc
        0x10
        0x14
        0x19
    .end array-data

    :array_19
    .array-data 4
        -0x32
        -0x32
        -0x32
        -0x32
        -0x2d
        -0x28
        -0x28
        -0x23
        -0x1e
        -0x19
        -0x14
        -0x11
        -0xf
        -0xc
        -0x7
        -0x3
        0x0
        0x1
        0x3
        0x7
        0xa
    .end array-data

    :array_1a
    .array-data 4
        -0x32
        -0x32
        -0x32
        -0x32
        -0x32
        -0x32
        -0x2d
        -0x2d
        -0x28
        -0x23
        -0x1e
        -0x19
        -0x14
        -0xf
        -0xc
        -0xa
        -0x5
        -0x2
        0x0
        0x2
        0x5
    .end array-data

    :array_1b
    .array-data 4
        -0xa
        -0xc
        -0xc
        -0xf
        -0xf
        -0x14
        -0x14
        -0x19
        -0x19
        -0x1e
        -0x1e
        -0x23
        -0x23
        -0x28
        -0x28
        -0x28
        -0x32
        -0x32
        -0x32
        -0x32
        -0x32
    .end array-data

    :array_1c
    .array-data 4
        -0x5
        -0x7
        -0x7
        -0xa
        -0xa
        -0xf
        -0xf
        -0x14
        -0x14
        -0x19
        -0x19
        -0x1e
        -0x1e
        -0x23
        -0x23
        -0x23
        -0x2d
        -0x2d
        -0x2d
        -0x2d
        -0x2d
    .end array-data

    :array_1d
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x0
        -0x1
        -0x3
        -0x7
        -0xf
        -0x14
        -0x23
        -0x23
        -0x23
        -0x2d
        -0x2d
        -0x2d
        -0x2d
        -0x2d
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x2
        -0x4
        -0x8
        -0xc
        -0x14
        -0x1b
        -0x23
        -0x23
        -0x2d
        -0x2d
        -0x2d
        -0x2d
        -0x2d
    .end array-data

    :array_1f
    .array-data 4
        -0x2
        -0x2
        -0x2
        -0x1
        0x0
        0x1
        0x1
        0x0
        -0x2
        -0x2
        -0x4
        -0x6
        -0xa
        -0xf
        -0x14
        -0x19
        -0x1e
        -0x23
        -0x23
        -0x28
        -0x28
    .end array-data

    :array_20
    .array-data 4
        -0xa
        -0xa
        -0x8
        -0x8
        -0x6
        -0x3
        0x0
        0x0
        0x3
        0x5
        0x7
        0x3
        -0x2
        -0x5
        -0xa
        -0xf
        -0x19
        -0x19
        -0x1e
        -0x23
        -0x23
    .end array-data

    :array_21
    .array-data 4
        -0x19
        -0x14
        -0x14
        -0x14
        -0xf
        -0xf
        -0xa
        -0xa
        -0x5
        -0x2
        0x0
        0x2
        0x3
        -0x1
        -0x5
        -0xa
        -0xf
        -0x14
        -0x14
        -0x19
        -0x1e
    .end array-data

    :array_22
    .array-data 4
        -0x28
        -0x28
        -0x23
        -0x1e
        -0x19
        -0x14
        -0xf
        -0xf
        -0xa
        -0xa
        -0xa
        -0x7
        -0x4
        0x0
        0x1
        0x3
        0x4
        0x6
        0x7
        0x9
        0xa
    .end array-data

    :array_23
    .array-data 4
        -0x28
        -0x28
        -0x28
        -0x28
        -0x23
        -0x23
        -0x23
        -0x1e
        -0x1e
        -0x19
        -0x19
        -0x14
        -0xf
        -0x6
        0x0
        0x2
        0x4
        0x5
        0x7
        0x9
        0xa
    .end array-data

    :array_24
    .array-data 4
        -0x28
        -0x28
        -0x2d
        -0x2d
        -0x32
        -0x32
        -0x32
        -0x3c
        -0x3c
        -0x3c
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
    .end array-data

    :array_25
    .array-data 4
        -0x14
        -0x14
        -0x1e
        -0x1e
        -0x28
        -0x28
        -0x28
        -0x32
        -0x32
        -0x32
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
        -0x3c
    .end array-data

    :array_26
    .array-data 4
        -0x5
        -0x5
        -0x7
        -0x7
        -0x9
        -0xa
        -0xc
        -0xe
        -0x10
        -0x14
        -0x19
        -0x1e
        -0x23
        -0x28
        -0x2d
        -0x32
        -0x37
        -0x3c
        -0x3c
        -0x3c
        -0x3c
    .end array-data

    :array_27
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x7
        -0x9
        -0xa
        -0xc
        -0xe
        -0x10
        -0x14
        -0x19
        -0x1e
        -0x23
        -0x28
        -0x2d
        -0x32
        -0x37
        -0x3c
        -0x3c
        -0x3c
        -0x3c
    .end array-data

    :array_28
    .array-data 4
        0x3
        0x3
        0x3
        0x2
        0x1
        0x0
        -0x3
        -0x5
        -0x7
        -0xa
        -0xf
        -0x14
        -0x19
        -0x1e
        -0x23
        -0x2d
        -0x32
        -0x3c
        -0x3c
        -0x3c
        -0x3c
    .end array-data

    :array_29
    .array-data 4
        0x4
        0x4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x0
        0x0
        -0x1
        -0x3
        -0x5
        -0x8
        -0xc
        -0x10
        -0x14
        -0x1e
        -0x1e
        -0x28
        -0x2d
        -0x32
    .end array-data

    :array_2a
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        -0x2
        -0x3
        -0x3
        -0x5
        -0x8
        -0xa
        -0xf
        -0x14
        -0x1e
        -0x1e
        -0x28
        -0x2d
        -0x32
    .end array-data

    :array_2b
    .array-data 4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
        0x5
        0x3
        0x2
        0x1
        0x0
        -0x5
        -0xa
        -0xf
        -0x14
    .end array-data

    :array_2c
    .array-data 4
        -0xa
        -0xa
        -0xa
        -0xa
        -0x8
        -0x8
        -0x7
        -0x7
        -0x5
        -0x5
        -0x4
        -0x2
        -0x2
        -0x2
        0x0
        0x1
        0x1
        0x2
        0x4
        0x6
        0x7
    .end array-data

    :array_2d
    .array-data 4
        -0x3c
        -0x3c
        -0x41
        -0x41
        -0x46
        -0x46
        -0x46
        -0x4b
        -0x4b
        -0x4b
        -0x50
        -0x50
        -0x50
        -0x50
        -0x50
        -0x50
        -0x50
        -0x50
        -0x50
        -0x50
        -0x50
    .end array-data

    :array_2e
    .array-data 4
        -0x28
        -0x28
        -0x32
        -0x32
        -0x3c
        -0x3c
        -0x3c
        -0x41
        -0x41
        -0x41
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
    .end array-data

    :array_2f
    .array-data 4
        -0x14
        -0x14
        -0x19
        -0x19
        -0x1e
        -0x1e
        -0x23
        -0x23
        -0x28
        -0x28
        -0x28
        -0x32
        -0x3c
        -0x3c
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
    .end array-data

    :array_30
    .array-data 4
        -0xf
        -0xf
        -0x19
        -0x19
        -0x1e
        -0x1e
        -0x23
        -0x23
        -0x28
        -0x28
        -0x28
        -0x32
        -0x3c
        -0x3c
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
    .end array-data

    :array_31
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x5
        -0x7
        -0xa
        -0xf
        -0x14
        -0x19
        -0x19
        -0x1e
        -0x23
        -0x28
        -0x32
        -0x3c
        -0x46
        -0x46
        -0x46
        -0x46
        -0x46
    .end array-data

    :array_32
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x4
        -0x8
        -0xf
        -0x14
        -0x19
        -0x1e
        -0x23
        -0x2d
        -0x2d
        -0x3c
        -0x3c
        -0x3c
    .end array-data

    :array_33
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        -0x1
        -0x2
        -0x4
        -0x8
        -0xc
        -0xf
        -0x14
        -0x1b
        -0x23
        -0x2d
        -0x2d
        -0x3c
        -0x3c
        -0x3c
    .end array-data

    :array_34
    .array-data 4
        0x4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x0
        0x1
        0x2
        0x1
        0x0
        -0x3
        -0x5
        -0xa
        -0xf
        -0x14
        -0x19
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x0
        0x0
        -0x1
        -0x5
        -0xa
        -0xf
        -0x14
        -0x19
    .end array-data
.end method
