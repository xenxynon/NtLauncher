.class public final synthetic Lcom/android/quickstep/inputconsumers/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lcom/android/quickstep/inputconsumers/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/inputconsumers/d;

    invoke-direct {v0}, Lcom/android/quickstep/inputconsumers/d;-><init>()V

    sput-object v0, Lcom/android/quickstep/inputconsumers/d;->g:Lcom/android/quickstep/inputconsumers/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->a(Landroid/view/MotionEvent;)V

    return-void
.end method
