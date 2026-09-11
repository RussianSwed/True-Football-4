.class public Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TeamAnalysisAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field private selectedPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "CustomFontTextViewResourceId",
            "objects"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p2, -0x1

    .line 24
    iput p2, p0, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->selectedPos:I

    .line 29
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSelectedPosition()I
    .locals 1

    .line 39
    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->selectedPos:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 48
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0a0089

    .line 49
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    const v3, 0x7f08036b

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v4, 0x7f080145

    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v5, 0x7f0802c8

    .line 56
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v6, 0x7f080144

    .line 57
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v7, 0x7f08016b

    .line 58
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x0

    .line 60
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v3, v9}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 61
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 62
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v5, v9}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 63
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v6, v9}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 64
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 66
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v10, "teamEmblem"

    .line 68
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "teamName"

    .line 69
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 72
    invoke-virtual {v3, v11}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "daysLeftToResults"

    .line 74
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, " "

    const/16 v14, 0x8

    if-lez v12, :cond_1

    .line 75
    invoke-virtual {v4, v8}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 76
    invoke-virtual {v5, v14}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 77
    invoke-virtual {v6, v14}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 78
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0c0222

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v4, v14}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 81
    invoke-virtual {v5, v8}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 82
    invoke-virtual {v6, v8}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->context:Landroid/content/Context;

    const v14, 0x7f0c0223

    invoke-virtual {v12, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "daysLeftToExpire"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v11, "mounted"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 88
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 89
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v11, "True Football 3"

    invoke-direct {v9, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 93
    :goto_2
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "drawable"

    invoke-virtual {v1, v10, v11, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_3
    iget v1, v0, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->selectedPos:I

    move/from16 v7, p1

    if-ne v1, v7, :cond_5

    const/16 v1, 0xff

    const/16 v7, 0x7f

    .line 109
    invoke-static {v1, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v3, v9}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 110
    invoke-static {v1, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 111
    invoke-static {v1, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v6, v3}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 112
    invoke-static {v1, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 113
    invoke-static {v1, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 116
    :cond_5
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 117
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v4, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 118
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v6, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 119
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v5, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    .line 120
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    return-object v2
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 33
    iput p1, p0, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->selectedPos:I

    .line 35
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->notifyDataSetChanged()V

    return-void
.end method
