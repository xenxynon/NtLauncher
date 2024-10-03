.class public final Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/utils/AppLockedModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;-><init>()V

    return-void
.end method

.method public static synthetic isWindowAppLockedSupport$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final isWindowAppLockedSupport()Z
    .locals 0

    invoke-static {}, Lcom/android/quickstep/utils/AppLockedModeHelper;->access$isWindowAppLockedSupport$delegate$cp()Ln5/e;

    move-result-object p0

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
