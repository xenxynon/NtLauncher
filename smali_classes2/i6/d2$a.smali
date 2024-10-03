.class final Li6/d2$a;
.super Li6/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li6/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final o:Li6/d2;


# direct methods
.method public constructor <init>(Lq5/d;Li6/d2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-TT;>;",
            "Li6/d2;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Li6/o;-><init>(Lq5/d;I)V

    iput-object p2, p0, Li6/d2$a;->o:Li6/d2;

    return-void
.end method


# virtual methods
.method protected F()Ljava/lang/String;
    .locals 0

    const-string p0, "AwaitContinuation"

    return-object p0
.end method

.method public t(Li6/v1;)Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Li6/d2$a;->o:Li6/d2;

    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li6/d2$c;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Li6/d2$c;

    invoke-virtual {v0}, Li6/d2$c;->f()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    instance-of v0, p0, Li6/b0;

    if-eqz v0, :cond_2

    check-cast p0, Li6/b0;

    iget-object p0, p0, Li6/b0;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_2
    invoke-interface {p1}, Li6/v1;->h()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method
