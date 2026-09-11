.class public Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;
.super Landroid/app/Dialog;
.source "MessageDialog.java"


# instance fields
.field m:Lpl/mkrstudio/truefootball3/objects/Message;

.field mainActivity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

.field msgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Message;",
            ">;"
        }
    .end annotation
.end field

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Message;Ljava/util/List;Lpl/mkrstudio/truefootball3/adapters/MailAdapter;Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "context",
            "message",
            "messages",
            "mailAdapter",
            "ud"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpl/mkrstudio/truefootball3/objects/Message;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Message;",
            ">;",
            "Lpl/mkrstudio/truefootball3/adapters/MailAdapter;",
            "Lpl/mkrstudio/truefootball3/objects/UserData;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0044

    .line 35
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->setContentView(I)V

    .line 41
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 42
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    .line 43
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->msgs:Ljava/util/List;

    .line 44
    move-object p2, p1

    check-cast p2, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->mainActivity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->showMessage()V

    const p2, 0x7f0801da

    .line 48
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 49
    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;

    invoke-direct {p3, p0, p4, p1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;Lpl/mkrstudio/truefootball3/adapters/MailAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0802d1

    .line 64
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 65
    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$2;

    invoke-direct {p3, p0, p4, p1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;Lpl/mkrstudio/truefootball3/adapters/MailAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method showMessage()V
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f080138

    .line 84
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080199

    .line 85
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08019a

    .line 86
    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08010f

    .line 87
    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08002f

    .line 88
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f080177

    .line 89
    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 91
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Message;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->isPressArticle()Z

    move-result v1

    const/16 v7, 0x8

    const-string v8, "string"

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0702dc

    .line 96
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 98
    :cond_0
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Message;->getAuthorId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v8, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getAuthorId()Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getAuthorId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chairman"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ResourceHelper;->getChairmanFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 109
    :cond_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getAuthorId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "assistant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ResourceHelper;->getAssistantFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f07007e

    .line 112
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    const-string v1, ""

    const/4 v2, 0x0

    .line 116
    :goto_2
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-ge v2, v3, :cond_f

    .line 117
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v11, 0x0

    .line 121
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 122
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 123
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    new-instance v14, Ljava/util/Locale;

    const-string v15, "en"

    invoke-direct {v14, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v14, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v11, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 130
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v13, Ljava/util/Locale;

    invoke-direct {v13, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v8, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    .line 133
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v11, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/16 v7, 0x8

    goto :goto_3

    .line 141
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v6, :cond_6

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3, v8, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 143
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v11, 0x2

    if-ge v7, v11, :cond_7

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v8, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 145
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v12, 0x3

    if-ge v7, v12, :cond_8

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v3, v8, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v11, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v3, v9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 147
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x4

    if-ge v7, v13, :cond_9

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v8, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v12, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v3, v9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v3, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 149
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x5

    if-ge v7, v14, :cond_a

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v3, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v12

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 151
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v15, 0x6

    if-ge v7, v15, :cond_b

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v3, v8, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v14, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v12

    const/4 v6, 0x4

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 153
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x7

    if-ge v7, v13, :cond_c

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v8, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v15, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v12

    const/4 v6, 0x4

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v3, v6

    const/4 v6, 0x5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 155
    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/16 v14, 0x8

    if-ge v7, v14, :cond_d

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v3, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v3, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v12

    const/4 v6, 0x4

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v3, v6

    const/4 v6, 0x5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v3, v6

    const/4 v6, 0x6

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 157
    :cond_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/16 v14, 0x9

    if-ge v7, v14, :cond_e

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v3, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    new-array v14, v3, [Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v14, v9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v14, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v14, v11

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v14, v12

    const/4 v3, 0x4

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v14, v3

    const/4 v3, 0x5

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v14, v3

    const/4 v3, 0x6

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v14, v3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v14, v13

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x8

    goto/16 :goto_2

    .line 162
    :cond_f
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0801da

    .line 164
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0802d1

    .line 165
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 166
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->msgs:Ljava/util/List;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 167
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->msgs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_10

    .line 168
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    .line 172
    :cond_10
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_6
    if-nez v3, :cond_11

    .line 178
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7

    .line 182
    :cond_11
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    :goto_7
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->msgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_12

    const v1, 0x7f0800dd

    .line 189
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    .line 190
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    :cond_12
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getButtonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 194
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Message;->getButtonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$3;

    invoke-direct {v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_13
    const/16 v1, 0x8

    .line 204
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_8
    return-void
.end method
