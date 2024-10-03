.class public final Lf2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf2/a;

    invoke-direct {v0}, Lf2/a;-><init>()V

    sput-object v0, Lf2/a;->a:Lf2/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "param_type"

    if-eqz v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lj2/c;->a:Lj2/c$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lj2/c$a;->r(I)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_8
    instance-of v0, p0, Landroid/net/Uri;

    if-eqz v0, :cond_9

    const-class p0, Landroid/net/Uri;

    goto :goto_0

    :cond_9
    instance-of v0, p0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    const-class p0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    sget-object v0, Lj2/c;->a:Lj2/c$a;

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lj2/c$a;->r(I)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    const-string v1, "param_value"

    if-eqz v0, :cond_1

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0, v1}, Lv1/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lv1/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method
