.class public final synthetic Lcom/android/quickstep/d9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lcom/android/quickstep/d9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/d9;

    invoke-direct {v0}, Lcom/android/quickstep/d9;-><init>()V

    sput-object v0, Lcom/android/quickstep/d9;->g:Lcom/android/quickstep/d9;

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

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->g0(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method
