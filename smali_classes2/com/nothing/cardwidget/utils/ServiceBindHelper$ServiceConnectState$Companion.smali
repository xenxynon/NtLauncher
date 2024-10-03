.class public final Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_RETRYING:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;

    invoke-direct {v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;->$$INSTANCE:Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
