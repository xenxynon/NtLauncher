.class final Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/utils/GameModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/android/quickstep/utils/GameModeHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;

    invoke-direct {v0}, Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;->INSTANCE:Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/quickstep/utils/GameModeHelper;
    .locals 2

    new-instance p0, Lcom/android/quickstep/utils/GameModeHelper;

    new-instance v0, Lcom/android/quickstep/gamemode/GameModeDelegate;

    invoke-direct {v0}, Lcom/android/quickstep/gamemode/GameModeDelegate;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/utils/GameModeHelper;-><init>(Lcom/android/quickstep/gamemode/IGameModeDelegate;Lkotlin/jvm/internal/i;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/utils/GameModeHelper$Companion$instance$2;->invoke()Lcom/android/quickstep/utils/GameModeHelper;

    move-result-object p0

    return-object p0
.end method
