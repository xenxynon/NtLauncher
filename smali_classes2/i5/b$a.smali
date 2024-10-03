.class Li5/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Li5/b$b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li5/b$b;

.field final synthetic b:Li5/b;


# direct methods
.method constructor <init>(Li5/b;Li5/b$b;)V
    .locals 0

    iput-object p1, p0, Li5/b$a;->b:Li5/b;

    iput-object p2, p0, Li5/b$a;->a:Li5/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateConfig"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Li5/b$a;->a:Li5/b$b;

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-interface {p0, p1}, Li5/b$b;->a(Lorg/json/JSONArray;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
