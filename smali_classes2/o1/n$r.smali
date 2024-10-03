.class final Lo1/n$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/e;Lr1/a;)Ll1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll1/e;",
            "Lr1/a<",
            "TT;>;)",
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lr1/a;->c()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Ll1/e;->l(Ljava/lang/Class;)Ll1/t;

    move-result-object p1

    new-instance p2, Lo1/n$r$a;

    invoke-direct {p2, p0, p1}, Lo1/n$r$a;-><init>(Lo1/n$r;Ll1/t;)V

    return-object p2
.end method
