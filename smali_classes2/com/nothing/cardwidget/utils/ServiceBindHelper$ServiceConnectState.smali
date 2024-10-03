.class public interface abstract annotation Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/utils/ServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ServiceConnectState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_RETRYING:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;->$$INSTANCE:Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;

    sput-object v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState;->Companion:Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState$Companion;

    return-void
.end method
