.class Lj5/d$a;
.super Lj5/d$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/d;->k(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
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
.field final synthetic c:Z

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lj5/d;


# direct methods
.method varargs constructor <init>(Lj5/d;[Lj5/d$q;ZLjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj5/d$a;->e:Lj5/d;

    iput-boolean p3, p0, Lj5/d$a;->c:Z

    iput-object p4, p0, Lj5/d$a;->d:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj5/d$p;-><init>(Lj5/d;[Lj5/d$q;)V

    return-void
.end method


# virtual methods
.method protected b(Lj5/d$j;Lj5/d$g;Lj5/d$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/d$j<",
            "TK;TV;>;",
            "Lj5/d$g<",
            "TK;TV;>;",
            "Lj5/d<",
            "TK;TV;>.f;)TV;"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lj5/d$g;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p3, p0, Lj5/d$a;->c:Z

    if-eqz p3, :cond_0

    iget-object p0, p0, Lj5/d$a;->d:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lj5/d$g;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1

    :cond_1
    iget-object p0, p0, Lj5/d$a;->d:Ljava/lang/Object;

    invoke-virtual {p3, p0}, Lj5/d$f;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
