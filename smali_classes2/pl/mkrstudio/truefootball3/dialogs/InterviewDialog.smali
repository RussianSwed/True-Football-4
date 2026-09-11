.class public Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;
.super Landroid/app/Dialog;
.source "InterviewDialog.java"


# instance fields
.field answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field continueButton:Landroid/widget/Button;

.field currentQuestion:I

.field interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

.field journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

.field question:Landroid/widget/TextView;

.field selectedAnswer:I

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;Lpl/mkrstudio/truefootball3/objects/Journalist;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "ud",
            "iq",
            "journalist"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    .line 29
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    .line 32
    iput p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a003f

    .line 39
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->setContentView(I)V

    .line 40
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->setCancelable(Z)V

    .line 42
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 43
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    .line 44
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showGreeting()V

    return-void
.end method


# virtual methods
.method showGreeting()V
    .locals 8

    const v0, 0x7f080221

    .line 51
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08024b

    .line 52
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0802a7

    .line 53
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    const v2, 0x7f080177

    .line 54
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 56
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v4, 0x7f080059

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 57
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v4, 0x7f08005a

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 58
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v4, 0x7f08005b

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const v3, 0x7f080114

    .line 59
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    .line 60
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Journalist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c037f

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f07007e

    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Journalist;->isKnown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0332

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Journalist;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0333

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Journalist;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/objects/Journalist;->setKnown(Z)V

    .line 73
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v0, v0, v5

    const v1, 0x7f0c02c2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v0, v0, v6

    const v1, 0x7f0c0427

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v0, v0, v7

    const v1, 0x7f0c040f

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    array-length v1, v0

    if-ge v5, v1, :cond_1

    .line 96
    aget-object v0, v0, v5

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;

    invoke-direct {v1, p0, v5}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;I)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method showNextQuestion()V
    .locals 8

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    :goto_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 115
    aget-object v2, v2, v1

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 118
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    const v4, 0x7f0c060e

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v0

    const v4, 0x7f0c0670

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 120
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v3

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v0

    const/16 v2, 0xff

    const/16 v4, 0x7f

    invoke-static {v2, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 125
    iput v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 137
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v1

    const v4, 0x7f0c0652

    if-ne v1, v4, :cond_2

    .line 138
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 139
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    const v5, 0x7f0c064f

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 141
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v3

    const v5, 0x7f0c0650

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 142
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v2

    const v5, 0x7f0c0651

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 144
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v2, v3, v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$4;

    invoke-direct {v2, p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 171
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v1

    const v4, 0x7f0c032f

    if-ne v1, v4, :cond_3

    .line 172
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 173
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    const v5, 0x7f0c032c

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 175
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v3

    const v5, 0x7f0c032d

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 176
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v2

    const v5, 0x7f0c032e

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 178
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 179
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v2, v3, v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$5;

    invoke-direct {v2, p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 205
    :cond_3
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v1

    const v4, 0x7f0c05d3

    if-ne v1, v4, :cond_4

    .line 206
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 207
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    const v5, 0x7f0c05d0

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 209
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v3

    const v5, 0x7f0c05d1

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 210
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v2

    const v5, 0x7f0c05d2

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 212
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 213
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 214
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v2, v3, v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 216
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;

    invoke-direct {v2, p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 239
    :cond_4
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v1

    const v4, 0x7f0c0360

    if-ne v1, v4, :cond_5

    .line 240
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 241
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v0

    const v4, 0x7f0c035d

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 243
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v3

    const v4, 0x7f0c035e

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 244
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v2

    const v4, 0x7f0c035f

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 246
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 265
    :cond_5
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v1

    const v4, 0x7f0c04c8

    if-ne v1, v4, :cond_6

    .line 266
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 267
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c04c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v3

    const v5, 0x7f0c04c6

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 270
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v2

    const v5, 0x7f0c04c7

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 272
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 273
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 274
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v2, v3, v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$8;

    invoke-direct {v2, p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$8;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 296
    :cond_6
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v1

    const v4, 0x7f0c04c2

    if-ne v1, v4, :cond_7

    .line 297
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 298
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->question:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->interviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getQuestionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    const v5, 0x7f0c04bf

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 300
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v3

    const v5, 0x7f0c04c0

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 301
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c04c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 305
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v2, v3, v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;

    invoke-direct {v2, p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;-><init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_1
    return-void
.end method
