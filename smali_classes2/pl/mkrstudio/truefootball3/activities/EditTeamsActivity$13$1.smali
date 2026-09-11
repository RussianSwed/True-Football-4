.class Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;
.super Ljava/lang/Object;
.source "EditTeamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$input",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 323
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 326
    sget-object v3, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v2, v3, :cond_0

    .line 327
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedTeamNames()Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Team;->setEditedName(Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iput-boolean v1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->unsavedChanges:Z

    .line 336
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 337
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->initTeamSpinner()V

    .line 338
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 339
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 341
    :cond_2
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0033

    .line 343
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 345
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v1, 0x7f0c05f8

    .line 346
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    const v0, 0x7f080259

    .line 348
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 349
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method
