.class final Lo1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/h;
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
    .locals 0
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

    move-result-object p0

    const-class p2, Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    new-instance p0, Lo1/h;

    invoke-direct {p0, p1}, Lo1/h;-><init>(Ll1/e;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
