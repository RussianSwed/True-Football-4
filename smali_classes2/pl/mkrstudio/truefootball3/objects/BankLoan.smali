.class public Lpl/mkrstudio/truefootball3/objects/BankLoan;
.super Ljava/lang/Object;
.source "BankLoan.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2e13eb07f745c863L


# instance fields
.field date:Ljava/lang/String;

.field loanAmount:J

.field monthlyFee:I

.field monthsToEnd:B


# direct methods
.method public constructor <init>(JBILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "loanAmount",
            "monthsToEnd",
            "monthlyFee",
            "date"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->loanAmount:J

    .line 19
    iput-byte p3, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->monthsToEnd:B

    .line 20
    iput p4, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->monthlyFee:I

    .line 21
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getLoanAmount()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->loanAmount:J

    return-wide v0
.end method

.method public getMonthlyFee()I
    .locals 1

    .line 41
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->monthlyFee:I

    return v0
.end method

.method public getMonthsToEnd()B
    .locals 1

    .line 33
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->monthsToEnd:B

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->date:Ljava/lang/String;

    return-void
.end method

.method public setLoanAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loanAmount"
        }
    .end annotation

    .line 53
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->loanAmount:J

    return-void
.end method

.method public setMonthlyFee(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthlyFee"
        }
    .end annotation

    .line 45
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->monthlyFee:I

    return-void
.end method

.method public setMonthsToEnd(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthsToEnd"
        }
    .end annotation

    .line 37
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/BankLoan;->monthsToEnd:B

    return-void
.end method
