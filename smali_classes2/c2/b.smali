.class public final Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/b;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 9

    iget-object v0, p0, Lc2/b;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "this.keys()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Li2/e;->a:Li2/e$a;

    invoke-virtual {v3}, Li2/e$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lc2/b;->a:Lorg/json/JSONObject;

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lv1/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    :goto_1
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of v5, v4, Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    instance-of v7, v4, Lorg/json/JSONObject;

    :goto_2
    if-eqz v7, :cond_0

    if-eqz v5, :cond_4

    new-instance v5, Lorg/json/JSONObject;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v5, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    :goto_3
    invoke-virtual {v3}, Li2/e$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lj2/b;->a:Lj2/b$a;

    invoke-virtual {v4}, Lj2/b$a;->f()I

    move-result v7

    if-ne v3, v7, :cond_d

    const-string v3, "param_type"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "param_value"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lj2/c;->a:Lj2/c$a;

    invoke-virtual {v5}, Lj2/c$a;->b()I

    move-result v7

    if-ne v3, v7, :cond_5

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lj2/c$a;->c()I

    move-result v7

    const-string v8, "paramValue"

    if-ne v3, v7, :cond_6

    invoke-static {v4, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lv1/a;->a(Ljava/lang/Object;)B

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Lj2/c$a;->o()I

    move-result v7

    if-ne v3, v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Lj2/c$a;->d()I

    move-result v7

    if-ne v3, v7, :cond_8

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v5}, Lj2/c$a;->f()I

    move-result v6

    if-ne v3, v6, :cond_a

    invoke-static {v4, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lv1/a;->c(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v5}, Lj2/c$a;->h()I

    move-result v6

    if-ne v3, v6, :cond_b

    invoke-static {v4, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lv1/a;->d(Ljava/lang/Object;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v5}, Lj2/c$a;->k()I

    move-result v6

    if-ne v3, v6, :cond_c

    invoke-static {v4, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lv1/a;->h(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v5}, Lj2/c$a;->n()I

    move-result v5

    if-ne v3, v5, :cond_0

    invoke-static {v4, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lv1/a;->i(Ljava/lang/Object;)S

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v4}, Lj2/b$a;->c()I

    move-result v4

    if-ne v3, v4, :cond_0

    new-instance v3, Lc2/b;

    invoke-direct {v3, v5}, Lc2/b;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lc2/b;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    :cond_f
    return-object v1
.end method
