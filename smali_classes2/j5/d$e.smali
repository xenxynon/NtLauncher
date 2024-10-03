.class Lj5/d$e;
.super Lj5/d$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/d;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lj5/d;


# direct methods
.method varargs constructor <init>(Lj5/d;[Lj5/d$q;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj5/d$e;->d:Lj5/d;

    iput-object p3, p0, Lj5/d$e;->c:Ljava/lang/Object;

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

    invoke-virtual {p2}, Lj5/d$g;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lj5/d$e;->c:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lj5/d$g;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
