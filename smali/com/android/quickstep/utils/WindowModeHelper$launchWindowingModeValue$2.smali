.class final Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;

    invoke-direct {v0}, Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Ly2/a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x65

    goto :goto_0

    :cond_0
    const-class p0, Landroid/app/WindowConfiguration;

    invoke-static {p0}, Ly2/g;->a(Ljava/lang/Class;)Ly2/g$f;

    move-result-object p0

    const-string v0, "WINDOWING_MODE_PINNED_WINDOW"

    invoke-interface {p0, v0}, Ly2/g$f;->b(Ljava/lang/String;)Ly2/g$g;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ly2/g$g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
