.class Li6/p2;
.super Li6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lq5/g;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Li6/a;-><init>(Lq5/g;ZZ)V

    return-void
.end method


# virtual methods
.method protected h0(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Li6/a;->getContext()Lq5/g;

    move-result-object p0

    invoke-static {p0, p1}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
