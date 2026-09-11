.class Lpl/mkrstudio/truefootball3/views/ValuePicker$13;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

.field final synthetic val$maxEmployees:I

.field final synthetic val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

.field final synthetic val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$stadiumEmployeeType",
            "val$et",
            "val$stadium",
            "val$fragment",
            "val$maxEmployees"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$et:Landroid/widget/EditText;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iput p6, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$maxEmployees:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 427
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    .line 428
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 429
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v3, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$et:Landroid/widget/EditText;

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iget v9, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;->val$maxEmployees:I

    invoke-static/range {v2 .. v9}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->access$000(Lpl/mkrstudio/truefootball3/views/ValuePicker;JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    :cond_0
    return-void
.end method
