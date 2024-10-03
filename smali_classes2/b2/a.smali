.class public final Lb2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/o;


# instance fields
.field private final g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/a;->g:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Ly5/l;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lx1/o$a;->a(Lx1/o;Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p6, Lb2/a$a;

    if-eqz p1, :cond_0

    move-object p1, p6

    check-cast p1, Lb2/a$a;

    iget p2, p1, Lb2/a$a;->i:I

    const/high16 p3, -0x80000000

    and-int p4, p2, p3

    if-eqz p4, :cond_0

    sub-int/2addr p2, p3

    iput p2, p1, Lb2/a$a;->i:I

    goto :goto_0

    :cond_0
    new-instance p1, Lb2/a$a;

    invoke-direct {p1, p0, p6}, Lb2/a$a;-><init>(Lb2/a;Lq5/d;)V

    :goto_0
    iget-object p2, p1, Lb2/a$a;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p3

    iget p4, p1, Lb2/a$a;->i:I

    const/4 p6, 0x1

    if-eqz p4, :cond_2

    if-ne p4, p6, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lb2/a;->g:Lorg/json/JSONObject;

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, p4

    :goto_1
    new-instance v0, Lc2/b;

    invoke-direct {v0, p2}, Lc2/b;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lc2/b;->a()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lb2/a$b;

    invoke-direct {v0, p5, p2, p4}, Lb2/a$b;-><init>(Lx1/m;Landroid/os/Bundle;Lq5/d;)V

    iput p6, p1, Lb2/a$a;->i:I

    invoke-virtual {p0, v0, p1}, Lb2/a;->a(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_4

    return-object p3

    :cond_4
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
