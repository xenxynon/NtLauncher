.class public final synthetic Lcom/android/quickstep/f9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/f9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/f9;

    invoke-direct {v0}, Lcom/android/quickstep/f9;-><init>()V

    sput-object v0, Lcom/android/quickstep/f9;->a:Lcom/android/quickstep/f9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->Y(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    return-object p0
.end method