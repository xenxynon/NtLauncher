.class public final Lj2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lj2/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    invoke-static {}, Lj2/c;->a()I

    move-result p0

    return p0
.end method

.method public final b()I
    .locals 0

    invoke-static {}, Lj2/c;->b()I

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 0

    invoke-static {}, Lj2/c;->c()I

    move-result p0

    return p0
.end method

.method public final d()I
    .locals 0

    invoke-static {}, Lj2/c;->d()I

    move-result p0

    return p0
.end method

.method public final e()I
    .locals 0

    invoke-static {}, Lj2/c;->e()I

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    invoke-static {}, Lj2/c;->f()I

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 0

    invoke-static {}, Lj2/c;->g()I

    move-result p0

    return p0
.end method

.method public final h()I
    .locals 0

    invoke-static {}, Lj2/c;->h()I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 0

    invoke-static {}, Lj2/c;->i()I

    move-result p0

    return p0
.end method

.method public final j()I
    .locals 0

    invoke-static {}, Lj2/c;->j()I

    move-result p0

    return p0
.end method

.method public final k()I
    .locals 0

    invoke-static {}, Lj2/c;->k()I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 0

    invoke-static {}, Lj2/c;->l()I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    invoke-static {}, Lj2/c;->m()I

    move-result p0

    return p0
.end method

.method public final n()I
    .locals 0

    invoke-static {}, Lj2/c;->n()I

    move-result p0

    return p0
.end method

.method public final o()I
    .locals 0

    invoke-static {}, Lj2/c;->o()I

    move-result p0

    return p0
.end method

.method public final p()I
    .locals 0

    invoke-static {}, Lj2/c;->p()I

    move-result p0

    return p0
.end method

.method public final q()I
    .locals 0

    invoke-static {}, Lj2/c;->q()I

    move-result p0

    return p0
.end method

.method public final r(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lj2/c$a;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lj2/c$a;->c()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lj2/c$a;->d()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-class p0, Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lj2/c$a;->f()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lj2/c$a;->h()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lj2/c$a;->j()I

    move-result v0

    if-ne p1, v0, :cond_5

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lj2/c$a;->k()I

    move-result v0

    if-ne p1, v0, :cond_6

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lj2/c$a;->n()I

    move-result v0

    if-ne p1, v0, :cond_7

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lj2/c$a;->o()I

    move-result v0

    if-ne p1, v0, :cond_8

    const-class p0, Ljava/lang/String;

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lj2/c$a;->m()I

    move-result v0

    if-ne p1, v0, :cond_9

    const-class p0, Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lj2/c$a;->q()I

    move-result v0

    if-ne p1, v0, :cond_a

    const-class p0, Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lj2/c$a;->a()I

    move-result v0

    if-ne p1, v0, :cond_b

    const-class p0, Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lj2/c$a;->l()I

    move-result v0

    if-ne p1, v0, :cond_c

    const-class p0, Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lj2/c$a;->p()I

    move-result v0

    if-ne p1, v0, :cond_d

    const-class p0, Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lj2/c$a;->e()I

    move-result v0

    if-ne p1, v0, :cond_e

    const-class p0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_e
    invoke-virtual {p0}, Lj2/c$a;->g()I

    move-result v0

    if-ne p1, v0, :cond_f

    const-class p0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_f
    invoke-virtual {p0}, Lj2/c$a;->i()I

    move-result p0

    if-ne p1, p0, :cond_10

    const-class p0, Landroid/graphics/drawable/Icon;

    :goto_0
    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parse param type. typeIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj2/c$a;->m()I

    move-result v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    if-ne p2, v0, :cond_0

    sget-object p0, Lj2/g;->a:Lj2/g$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lj2/g$a;->a(I)Landroid/widget/ImageView$ScaleType;

    move-result-object p3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lj2/c$a;->q()I

    move-result v0

    if-ne p2, v0, :cond_1

    sget-object p0, Lj2/i;->a:Lj2/i$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lj2/i$a;->a(I)Landroid/text/TextUtils$TruncateAt;

    move-result-object p3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lj2/c$a;->a()I

    move-result v0

    if-ne p2, v0, :cond_2

    sget-object p0, Lj2/d;->a:Lj2/d$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lj2/d$a;->a(I)Landroid/graphics/BlendMode;

    move-result-object p3

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lj2/c$a;->l()I

    move-result v0

    if-ne p2, v0, :cond_3

    sget-object p0, Lj2/e;->a:Lj2/e$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lj2/e$a;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lj2/c$a;->p()I

    move-result v0

    if-ne p2, v0, :cond_4

    sget-object p0, Lj2/h;->a:Lj2/h$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lj2/h$a;->a(I)Landroid/view/animation/Interpolator;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lj2/c$a;->e()I

    move-result v0

    if-ne p2, v0, :cond_5

    sget-object p0, Lj2/f;->a:Lj2/f$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lj2/f$a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lj2/c$a;->g()I

    move-result v0

    if-ne p2, v0, :cond_6

    sget-object p0, Lj2/f;->a:Lj2/f$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lj2/f$a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lj2/c$a;->i()I

    move-result p0

    if-ne p2, p0, :cond_7

    sget-object p0, Lj2/f;->a:Lj2/f$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lj2/f$a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    goto :goto_0

    :cond_7
    if-eqz p3, :cond_8

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    const/4 p3, 0x0

    :cond_9
    :goto_0
    return-object p3
.end method
