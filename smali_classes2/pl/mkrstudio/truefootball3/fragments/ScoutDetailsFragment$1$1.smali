.class Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;
.super Ljava/lang/Object;
.source "ScoutDetailsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

.field final synthetic val$regions:Ljava/util/List;

.field final synthetic val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

.field final synthetic val$totalCostTV:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;Ljava/util/List;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$scoutAssignment",
            "val$regions",
            "val$totalCostTV"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$regions:Ljava/util/List;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$totalCostTV:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentView",
            "selectedItemView",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 175
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->setCountries(Ljava/util/List;)V

    .line 176
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$regions:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/Zone;

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p5, p5, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "string"

    invoke-virtual {p2, p4, v0, p5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->setRegion(I)V

    .line 178
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$regions:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Zone;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCountries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ZAN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 179
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getCountries()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$totalCostTV:Landroid/widget/TextView;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p3

    invoke-virtual {p2, p3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->calculateTotalCost(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->modifier:F

    mul-float p2, p2, p3

    float-to-long p2, p2

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->currency:Ljava/lang/String;

    invoke-static {p2, p3, p4}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
