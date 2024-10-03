.class public final Lcom/android/quickstep/utils/AppLockedModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;

.field private static final isWindowAppLockedSupport$delegate:Ln5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/quickstep/utils/AppLockedModeHelper;->Companion:Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;

    sget-object v0, Lcom/android/quickstep/utils/AppLockedModeHelper$Companion$isWindowAppLockedSupport$2;->INSTANCE:Lcom/android/quickstep/utils/AppLockedModeHelper$Companion$isWindowAppLockedSupport$2;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/utils/AppLockedModeHelper;->isWindowAppLockedSupport$delegate:Ln5/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isWindowAppLockedSupport$delegate$cp()Ln5/e;
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/AppLockedModeHelper;->isWindowAppLockedSupport$delegate:Ln5/e;

    return-object v0
.end method

.method public static final isWindowAppLockedSupport()Z
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/AppLockedModeHelper;->Companion:Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;->isWindowAppLockedSupport()Z

    move-result v0

    return v0
.end method
