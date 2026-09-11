.class Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;
.super Ljava/lang/Object;
.source "EditPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

.field final synthetic val$playerName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$playerName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->val$playerName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 197
    :try_start_0
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setAge(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setAge(B)V

    .line 201
    :goto_0
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countries:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setNationality(Ljava/lang/String;)V

    .line 202
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->val$playerName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setName(Ljava/lang/String;)V

    .line 203
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positions:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 204
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setSecondPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 206
    :try_start_1
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setSkill(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 208
    :catch_1
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setSkill(B)V

    .line 210
    :goto_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->finish()V

    return-void
.end method
