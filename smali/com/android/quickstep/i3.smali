.class public final synthetic Lcom/android/quickstep/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/i3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/i3;

    invoke-direct {v0}, Lcom/android/quickstep/i3;-><init>()V

    sput-object v0, Lcom/android/quickstep/i3;->a:Lcom/android/quickstep/i3;

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

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->s(Lcom/android/quickstep/TouchInteractionService$TISBinder;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
