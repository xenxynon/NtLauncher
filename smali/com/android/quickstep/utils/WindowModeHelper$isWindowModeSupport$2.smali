.class final Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;
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
.field public static final INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;

    invoke-direct {v0}, Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;

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
    .locals 1

    invoke-static {}, Ly2/a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NTF_POP_UP_VIEW"

    invoke-static {p0}, Lh5/a;->a(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/quickstep/utils/WindowModeHelper;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper;

    invoke-static {p0}, Lcom/android/quickstep/utils/WindowModeHelper;->access$getLaunchWindowingModeValue(Lcom/android/quickstep/utils/WindowModeHelper;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
