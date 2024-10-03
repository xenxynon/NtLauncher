.class Lj5/d$c;
.super Lj5/d$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/d;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj5/d<",
        "TK;TV;>.p<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lj5/d;


# direct methods
.method varargs constructor <init>(Lj5/d;[Lj5/d$q;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj5/d$c;->d:Lj5/d;

    iput-object p3, p0, Lj5/d$c;->c:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj5/d$p;-><init>(Lj5/d;[Lj5/d$q;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lj5/d$j;Lj5/d$g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj5/d$c;->d(Lj5/d$j;Lj5/d$g;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected d(Lj5/d$j;Lj5/d$g;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/d$j<",
            "TK;TV;>;",
            "Lj5/d$g<",
            "TK;TV;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lj5/d$g;->getValue()Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lj5/d$c;->c:Ljava/lang/Object;

    invoke-static {p2, p0}, Lj5/j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lj5/d$j;->release()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
