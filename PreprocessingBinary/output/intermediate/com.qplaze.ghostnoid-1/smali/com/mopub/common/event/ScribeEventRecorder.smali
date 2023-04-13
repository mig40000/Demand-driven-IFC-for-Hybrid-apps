.class public Lcom/mopub/common/event/ScribeEventRecorder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/common/event/EventRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/event/ScribeEventRecorder$PollingRunnable;
    }
.end annotation


# static fields
.field private static final EVENT_COUNT_SEND_THRESHHOLD:I = 0x64

.field private static final POLLING_PERIOD_MS:I = 0x1d4c0

.field private static final QUEUE_MAX_SIZE:I = 0x1f4

.field private static final SCRIBE_URL:Ljava/lang/String; = "https://analytics.mopub.com/i/jot/exchange_client_event"


# instance fields
.field private final mEventQueue:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mopub/common/event/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventSampler:Lcom/mopub/common/event/EventSampler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEventSerializer:Lcom/mopub/common/event/EventSerializer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPollHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPollingRunnable:Lcom/mopub/common/event/ScribeEventRecorder$PollingRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScribeRequestManager:Lcom/mopub/network/ScribeRequestManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v1, Lcom/mopub/common/event/EventSampler;

    invoke-direct {v1}, Lcom/mopub/common/event/EventSampler;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lcom/mopub/common/event/EventSerializer;

    invoke-direct {v3}, Lcom/mopub/common/event/EventSerializer;-><init>()V

    new-instance v4, Lcom/mopub/network/ScribeRequestManager;

    invoke-direct {v4, p1}, Lcom/mopub/network/ScribeRequestManager;-><init>(Landroid/os/Looper;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/common/event/ScribeEventRecorder;-><init>(Lcom/mopub/common/event/EventSampler;Ljava/util/Queue;Lcom/mopub/common/event/EventSerializer;Lcom/mopub/network/ScribeRequestManager;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/mopub/common/event/EventSampler;Ljava/util/Queue;Lcom/mopub/common/event/EventSerializer;Lcom/mopub/network/ScribeRequestManager;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/mopub/common/event/EventSampler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Queue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/common/event/EventSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/network/ScribeRequestManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/common/event/EventSampler;",
            "Ljava/util/Queue",
            "<",
            "Lcom/mopub/common/event/BaseEvent;",
            ">;",
            "Lcom/mopub/common/event/EventSerializer;",
            "Lcom/mopub/network/ScribeRequestManager;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventSampler:Lcom/mopub/common/event/EventSampler;

    iput-object p2, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventQueue:Ljava/util/Queue;

    iput-object p3, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventSerializer:Lcom/mopub/common/event/EventSerializer;

    iput-object p4, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mScribeRequestManager:Lcom/mopub/network/ScribeRequestManager;

    iput-object p5, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mPollHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/common/event/ScribeEventRecorder$PollingRunnable;

    invoke-direct {v0, p0}, Lcom/mopub/common/event/ScribeEventRecorder$PollingRunnable;-><init>(Lcom/mopub/common/event/ScribeEventRecorder;)V

    iput-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mPollingRunnable:Lcom/mopub/common/event/ScribeEventRecorder$PollingRunnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/event/ScribeEventRecorder;)Lcom/mopub/common/event/EventSerializer;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventSerializer:Lcom/mopub/common/event/EventSerializer;

    return-object v0
.end method


# virtual methods
.method dequeueEvents()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/common/event/BaseEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public record(Lcom/mopub/common/event/BaseEvent;)V
    .locals 2
    .param p1    # Lcom/mopub/common/event/BaseEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventSampler:Lcom/mopub/common/event/EventSampler;

    invoke-virtual {v0, p1}, Lcom/mopub/common/event/EventSampler;->sample(Lcom/mopub/common/event/BaseEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventQueue is at max capacity. Event \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getName()Lcom/mopub/common/event/BaseEvent$Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is being dropped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/mopub/common/event/ScribeEventRecorder;->sendEvents()V

    :cond_2
    invoke-virtual {p0}, Lcom/mopub/common/event/ScribeEventRecorder;->scheduleNextPoll()V

    goto :goto_0
.end method

.method scheduleNextPoll()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mPollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mPollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mPollingRunnable:Lcom/mopub/common/event/ScribeEventRecorder$PollingRunnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method sendEvents()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mScribeRequestManager:Lcom/mopub/network/ScribeRequestManager;

    invoke-virtual {v0}, Lcom/mopub/network/ScribeRequestManager;->isAtCapacity()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/event/ScribeEventRecorder;->dequeueEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mopub/common/event/ScribeEventRecorder;->mScribeRequestManager:Lcom/mopub/network/ScribeRequestManager;

    new-instance v2, Lcom/mopub/common/event/ScribeEventRecorder$1;

    invoke-direct {v2, p0, v0}, Lcom/mopub/common/event/ScribeEventRecorder$1;-><init>(Lcom/mopub/common/event/ScribeEventRecorder;Ljava/util/List;)V

    new-instance v0, Lcom/mopub/network/ScribeBackoffPolicy;

    invoke-direct {v0}, Lcom/mopub/network/ScribeBackoffPolicy;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/mopub/network/ScribeRequestManager;->makeRequest(Lcom/mopub/network/RequestManager$RequestFactory;Lcom/mopub/network/BackoffPolicy;)V

    goto :goto_0
.end method
