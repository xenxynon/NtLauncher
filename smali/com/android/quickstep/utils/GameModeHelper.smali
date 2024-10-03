.class public final Lcom/android/quickstep/utils/GameModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/gamemode/IGameModeDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/utils/GameModeHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/utils/GameModeHelper$Companion;

.field private static final instance$delegate:Ln5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/e<",
            "Lcom/android/quickstep/utils/GameModeHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final synthetic $$delegate_0:Lcom/android/quickstep/gamemode/IGameModeDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/utils/GameModeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/utils/GameModeHelper$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/quickstep/utils/GameModeHelper;->Companion:Lcom/android/quickstep/utils/GameModeHelper$Companion;

    sget-object v0, Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;->INSTANCE:Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/utils/GameModeHelper;->instance$delegate:Ln5/e;

    return-void
.end method

.method private constructor <init>(Lcom/android/quickstep/gamemode/IGameModeDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/utils/GameModeHelper;->$$delegate_0:Lcom/android/quickstep/gamemode/IGameModeDelegate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/gamemode/IGameModeDelegate;Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/utils/GameModeHelper;-><init>(Lcom/android/quickstep/gamemode/IGameModeDelegate;)V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Ln5/e;
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/GameModeHelper;->instance$delegate:Ln5/e;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/quickstep/utils/GameModeHelper;
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/GameModeHelper;->Companion:Lcom/android/quickstep/utils/GameModeHelper$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/utils/GameModeHelper$Companion;->getInstance()Lcom/android/quickstep/utils/GameModeHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isMisTouchPreventionActive(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/utils/GameModeHelper;->$$delegate_0:Lcom/android/quickstep/gamemode/IGameModeDelegate;

    invoke-interface {p0, p1}, Lcom/android/quickstep/gamemode/IGameModeDelegate;->isMisTouchPreventionActive(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isNeedToPreventMisTouch(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/utils/GameModeHelper;->$$delegate_0:Lcom/android/quickstep/gamemode/IGameModeDelegate;

    invoke-interface {p0, p1}, Lcom/android/quickstep/gamemode/IGameModeDelegate;->isNeedToPreventMisTouch(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setAccidentalGestureTriggerTime(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/utils/GameModeHelper;->$$delegate_0:Lcom/android/quickstep/gamemode/IGameModeDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/quickstep/gamemode/IGameModeDelegate;->setAccidentalGestureTriggerTime(J)V

    return-void
.end method
