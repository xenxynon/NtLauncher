.class final Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/utils/WindowModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;

    invoke-direct {v0}, Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Ly2/a;->b()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->isWindowModeSupport()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "android.view.NtWindowManager"

    invoke-static {p0}, Ly2/g;->c(Ljava/lang/String;)Ly2/g$f;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-interface {v1, v3, v2}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ly2/g;->c(Ljava/lang/String;)Ly2/g$f;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "supportGestureEnterWindowMode"

    invoke-interface {p0, v3, v2}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v0}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
