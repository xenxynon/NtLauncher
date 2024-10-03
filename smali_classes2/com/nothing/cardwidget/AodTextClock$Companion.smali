.class public final Lcom/nothing/cardwidget/AodTextClock$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/AodTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/AodTextClock$Companion;-><init>()V

    return-void
.end method

.method private final abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final synthetic access$abc(Lcom/nothing/cardwidget/AodTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/AodTextClock$Companion;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
