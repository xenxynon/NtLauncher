.class public final Lx1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/n;


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/h;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    invoke-static/range {p0 .. p7}, Lx1/n$a;->a(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p7, Lx1/h$a;

    if-eqz p1, :cond_0

    move-object p1, p7

    check-cast p1, Lx1/h$a;

    iget v0, p1, Lx1/h$a;->i:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lx1/h$a;->i:I

    goto :goto_0

    :cond_0
    new-instance p1, Lx1/h$a;

    invoke-direct {p1, p0, p7}, Lx1/h$a;-><init>(Lx1/h;Lq5/d;)V

    :goto_0
    move-object v6, p1

    iget-object p1, v6, Lx1/h$a;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p7

    iget v0, v6, Lx1/h$a;->i:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    new-instance v0, Lb2/a;

    iget-object p0, p0, Lx1/h;->a:Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lb2/a;-><init>(Lorg/json/JSONObject;)V

    iput v1, v6, Lx1/h$a;->i:I

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lb2/a;->b(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p7, :cond_3

    return-object p7

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
