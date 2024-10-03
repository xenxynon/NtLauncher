.class Lj5/d$b;
.super Lj5/d$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj5/d<",
        "TK;TV;>.p<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lj5/d;


# direct methods
.method varargs constructor <init>(Lj5/d;[Lj5/d$q;)V
    .locals 0

    iput-object p1, p0, Lj5/d$b;->c:Lj5/d;

    invoke-direct {p0, p1, p2}, Lj5/d$p;-><init>(Lj5/d;[Lj5/d$q;)V

    return-void
.end method


# virtual methods
.method protected a(Lj5/d$j;Lj5/d$g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/d$j<",
            "TK;TV;>;",
            "Lj5/d$g<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lj5/d$j;->release()V

    invoke-static {p2}, Lj5/d$g;->a(Lj5/d$g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
