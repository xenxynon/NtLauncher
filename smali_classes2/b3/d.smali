.class public final Lb3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lv3/a;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv3/a;->i()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lq3/a;->a:Lq3/a;

    invoke-virtual {v1}, Lq3/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const p0, 0x7f120134

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{\n            context.ge\u2026SPLAY_NAME_RES)\n        }"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lq3/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const p0, 0x7f120138

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{\n            context.ge\u2026ME_NOTHING_RES)\n        }"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lq3/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f120136

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{\n            context.ge\u2026NAME_COLOR_RES)\n        }"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lv3/a;->e()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
