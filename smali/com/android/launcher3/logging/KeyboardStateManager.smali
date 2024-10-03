.class public Lcom/android/launcher3/logging/KeyboardStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;
    }
.end annotation


# instance fields
.field private mKeyboardState:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

.field private mUpdatedTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->NO_IME_ACTION:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    iput-object v0, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mKeyboardState:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    return-void
.end method


# virtual methods
.method public setKeyboardState(Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mUpdatedTime:J

    iput-object p1, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mKeyboardState:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    return-void
.end method
