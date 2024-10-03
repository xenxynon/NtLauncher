.class public final Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/utils/ServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultBindPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy$Companion;

.field public static final RETRY_INTERVAL:J = 0x7d0L

.field public static final RETRY_LIMIT_COUNT:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy;->Companion:Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindFlags()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getReBindLimitCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getRebindInterval()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public isAutoReBind()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
