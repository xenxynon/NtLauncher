.class Ll1/e$b;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/e;->f(Z)Ll1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ll1/e;


# direct methods
.method constructor <init>(Ll1/e;)V
    .locals 0

    iput-object p1, p0, Ll1/e$b;->a:Ll1/e;

    invoke-direct {p0}, Ll1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ls1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ll1/e$b;->e(Ls1/a;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ll1/e$b;->f(Ls1/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Ls1/a;)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object p0

    sget-object v0, Ls1/b;->o:Ls1/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ls1/a;->B()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls1/a;->w()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public f(Ls1/c;Ljava/lang/Number;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ll1/e;->d(D)V

    invoke-virtual {p1, p2}, Ls1/c;->H(Ljava/lang/Number;)Ls1/c;

    return-void
.end method
