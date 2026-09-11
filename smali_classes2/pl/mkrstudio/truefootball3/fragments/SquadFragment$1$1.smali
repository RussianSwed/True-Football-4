.class Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;
.super Ljava/lang/Object;
.source "SquadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

.field final synthetic val$tod:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$tod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->val$tod:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->val$tod:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->getClickedButton()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 133
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->val$tod:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->getClickedButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    const v0, 0x7f0800f8

    if-ne p1, v0, :cond_1

    .line 134
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v1, -0x1

    .line 135
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showSquad(Landroid/view/View;)V

    .line 138
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showPositions(Landroid/view/View;)V

    goto/16 :goto_2

    .line 139
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->val$tod:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->getClickedButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    const v0, 0x7f08031c

    if-ne p1, v0, :cond_4

    .line 140
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SortType;->BY_SELECTION:Lpl/mkrstudio/truefootball3/enums/SortType;

    if-ne p1, v0, :cond_2

    .line 141
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SortType;->BY_POSITION:Lpl/mkrstudio/truefootball3/enums/SortType;

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    goto :goto_1

    .line 142
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SortType;->BY_POSITION:Lpl/mkrstudio/truefootball3/enums/SortType;

    if-ne p1, v0, :cond_3

    .line 143
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SortType;->BY_SELECTION:Lpl/mkrstudio/truefootball3/enums/SortType;

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    .line 144
    :cond_3
    :goto_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sort(Lpl/mkrstudio/truefootball3/enums/SortType;Landroid/view/View;)V

    goto/16 :goto_2

    .line 145
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->val$tod:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->getClickedButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    const v0, 0x7f08021a

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-boolean p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->multiReleaseMode:Z

    if-nez p1, :cond_6

    .line 146
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->multiReleaseMode:Z

    .line 147
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->setMultiReleaseMode(Z)V

    .line 148
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-boolean p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->matchToday:Z

    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 151
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    const v1, 0x7f080088

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    const v1, 0x7f0800ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 153
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->continueButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    const v1, 0x7f08021d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    const v0, 0x7f08021f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 160
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    const v1, 0x7f08021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 162
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$2;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    return-void
.end method
