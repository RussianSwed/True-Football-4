.class public Lpl/mkrstudio/truefootball3/fragments/InboxFragment;
.super Landroidx/fragment/app/Fragment;
.source "InboxFragment.java"


# instance fields
.field mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachListener(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "ud",
            "mainView"
        }
    .end annotation

    const v0, 0x7f0801f5

    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 146
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/InboxFragment;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
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

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0a006e

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 48
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->sortMessages(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    .line 49
    invoke-virtual {p0, p2, p1}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->showMessageList(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V

    .line 50
    invoke-virtual {p0, p2, p1}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->attachListener(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V

    return-object p1
.end method

.method public showMessageList(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ud",
            "view"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "author"

    const-string v2, "string"

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;->getMessages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Message;

    .line 59
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 61
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->getAuthorId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :catch_0
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->getAuthorId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v9, ""

    const/4 v10, 0x0

    .line 68
    :goto_2
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 69
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 70
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v13, 0x0

    .line 73
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 74
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    new-instance v7, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v7, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v1

    const-string v1, "pl.mkrstudio.truefootballnm"

    invoke-virtual {v15, v7, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {v0, v7}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 81
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :try_start_2
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto :goto_3

    :cond_2
    move-object/from16 v16, v1

    .line 91
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ge v1, v6, :cond_3

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v11, v2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v9, v1

    goto/16 :goto_6

    .line 93
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x2

    if-ge v1, v6, :cond_4

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v11, v2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 95
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v7

    .line 94
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 96
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x3

    if-ge v1, v7, :cond_5

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v11, v2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 98
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v9

    const/4 v9, 0x1

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v9

    .line 97
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 99
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v13, 0x4

    if-ge v1, v13, :cond_6

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11, v2, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 101
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v11

    const/4 v11, 0x1

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v11

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v7, v6

    .line 100
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_2

    :cond_7
    move-object/from16 v16, v1

    .line 105
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v6, "date"

    invoke-interface {v8, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    .line 106
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->isRead()Z

    move-result v1

    const-string v6, "true"

    const-string v7, "false"

    const-string v9, "read"

    if-eqz v1, :cond_8

    .line 109
    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 111
    :cond_8
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_7
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Message;->isPressArticle()Z

    move-result v1

    const-string v5, "press"

    if-eqz v1, :cond_9

    .line 115
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 117
    :cond_9
    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :goto_8
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_a
    const v1, 0x7f0801f5

    move-object/from16 v2, p2

    .line 123
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 125
    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Lpl/mkrstudio/truefootball3/adapters/MailAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    const/4 v3, 0x1

    .line 126
    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/adapters/MailAdapter;->setNotifyOnChange(Z)V

    .line 128
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->mailAdapter:Lpl/mkrstudio/truefootball3/adapters/MailAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public sortMessages(Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ud"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->getMessages()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/InboxFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
