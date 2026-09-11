.class Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;
.super Ljava/lang/Object;
.source "ScoutDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->initCurrentAssignment(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 137
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0045

    .line 139
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08005f

    .line 141
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080067

    .line 142
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080161

    .line 145
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080398

    .line 146
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 148
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    const/4 v5, 0x0

    const/16 v6, 0x28

    const/16 v7, 0x32

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;-><init>(Ljava/util/List;IBI)V

    const v5, 0x7f0802ba

    .line 150
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 151
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 153
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 154
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 155
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Zone;

    .line 163
    iget-object v10, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    iget-object v11, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "string"

    invoke-virtual {v11, v9, v13, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 169
    new-instance v8, Lpl/mkrstudio/truefootball3/adapters/DefaultSpinnerAdapter;

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f0a00d3

    invoke-direct {v8, v9, v10, v7}, Lpl/mkrstudio/truefootball3/adapters/DefaultSpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    new-instance v7, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;

    invoke-direct {v7, p0, v4, v6, v3}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;Ljava/util/List;Landroid/widget/TextView;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 190
    new-instance v6, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$2;

    invoke-direct {v6, p0, v5}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$3;

    invoke-direct {v0, p0, v5}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 212
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v0, 0x7f080160

    .line 214
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x3c

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 216
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 217
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;

    invoke-direct {v1, p0, v4, v2, v3}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f080184

    .line 235
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x64

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 237
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getFinancing()B

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 238
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$5;

    invoke-direct {v1, p0, v4, v3}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080259

    .line 257
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 258
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;

    invoke-direct {v1, p0, v4, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e0

    .line 267
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 268
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$7;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
